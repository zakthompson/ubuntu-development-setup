#!/bin/bash

# Install dependencies
sudo apt install zsh tmux python3 python3-pip silversearcher-ag powerline fonts-powerline mosh neovim
pip3 install neovim
pip3 install powerline-status

# Download antigen
curl -L git.io/antigen > ~/antigen.zsh

# Install vim plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# Change shell to zsh
chsh -s /usr/bin/zsh

# Remove existing confgurations
rm -rf ~/.vim ~/.vimrc ~/.zshrc ~/.tmux ~/.tmux.conf ~/.config/nvim 2> /dev/null

# Create neovim directories
mkdir -p ~/.config ~/.config/nvim

# Symlink configs
ln -s $PWD/zshrc ~/.zshrc
ln -s $PWD/tmux.conf ~/.tmux.conf
ln -s $PWD/vimrc ~/.config/nvim/init.vim

# Use nvim
alias vim="nvim"
