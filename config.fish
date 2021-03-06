function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository
end

# aliases
balias cdd 'cd ~/Desktop'
balias cdl 'cd ~/Downloads'
balias sm 'open -a Sublime\ Merge'
balias fl 'open -a ForkLift'
balias st 'open -a /Applications/Android\ Studio.app'
balias pstorm 'open -a PhpStorm'

# aliases (git)
balias g 'git'
balias gst 'git status'
balias glog "git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

balias ga 'git add'
balias gaa 'git add --all'

balias gc 'git commit'
balias gc! 'git commit --amend'
balias gcmsg 'git commit -m'

balias gb 'git branch'
balias gco 'git checkout'

balias gf 'git fetch'
balias gf! 'git fetch --prune'
balias gl 'git pull'
balias gp 'git push'
balias gp! 'git push -f'

# set path (for PhpStorm)
set -x PATH /usr/local/bin $PATH

# direnv
direnv hook fish | source

# anyenv
status --is-interactive; and source (anyenv init -|psub)

set -x PATH $HOME/libs/flutter/bin $PATH
set -x ANDROID_HOME $HOME/Library/Android/sdk

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /Users/usagizmo/Downloads/electron-vue-typescript-starter-master/node_modules/tabtab/.completions/electron-forge.fish ]; and . /Users/usagizmo/Downloads/electron-vue-typescript-starter-master/node_modules/tabtab/.completions/electron-forge.fish
