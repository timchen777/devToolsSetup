================== Development Environment setup ======================
------------------------- 1. Rails on Linux -----------------------
REF: https://github.com/yuyueugene84/ntu_ror_training_course/blob/master/intallation.md
#Ruby on Rails Linux 安裝教學

##安裝前的小提醒

若你使用 Windows 電腦，我強烈建議安裝 Linux 雙系統或是用 VM 建立一台虛擬的 Linux 環境來開發 Ruby on Rails，VirtualBox 或 VMWare 加上 Ubuntu Linux 是一個很好的解決方案，請參考以下教學:

VirtualBox 安裝Ubuntu VMware Player 安裝Ubuntu

由於 Ruby 語言和 Rail 架構的核心開發群都是使用 Mac 和 Linux 開發，相較之下 Ruby on Rails 對 Windows 的優化和支援會比 Linux 差很多，若是直接在 Windows 上安裝 Ruby on Rail，通常會遇到的狀況不是無法安裝，就是一些相關的 dependencies 或是 gem 與 windows 不相容，會讓你遇上一些無法解決的問題，引響你的開發和學習進度。

開始安裝開發環境

Ubuntu 安裝成功後，接下來就開始安裝 Rails 的開發環境：

先安裝一些 Ruby 的 dependencies：

請打開你的 Terminal，輸入以下指令：

sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs
設定你的 git

打開 git 的彩色輸出

git config --global color.ui true
設定 git 的 user 和 email

git config --global user.name "你的名字"
git config --global user.email "你的 Email"
讓 git 記住你，不需每次上傳 code 都要重打

git config --global credential.helper store
接下來，安裝 rbenv，Ruby 語言的版本管理工具：

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL
安裝完 rbenv 之後，安裝 Ruby 2.2.3，並設為預設的 Ruby 版本，Ruby安裝過程較長，請耐心等候

rbenv install 2.3.3
rbenv global 2.3.3
安裝完後，輸入

ruby -v
應該會顯示

ruby 2.3.3
告訴 Rubygems 不要安裝 rdoc，初學者用不到，同時也拖長安裝時間

echo "gem: --no-ri --no-rdoc" > ~/.gemrc
安裝 bundler (管理應用程式 Gem 依存性(dependencies)管理工具，它會根據 Gemfile 的設定自動下載及安裝 Gem 套件)

gem install bundler
安裝 Node.js，一個 Javascript 的 runtime

curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs
接下來，安裝 Rails gem

gem install rails -v 5.0.0.1
跑完之後，輸入以下指令確保 Rails 可被 rbenv 讀取到

rbenv rehash
最後，確認一下剛才安裝的 Rails 版本是否正確：

rails -v
應該會顯示：

Rails 5.0.1
恭喜！你已經安裝完開發環境了！！！

建立你的第一個 Rails app

建立Rails app

rails new my_app
進入 Rails 專案的根目錄

cd my_app
接下來啟動 rails server：

rails server
打開你的瀏覽器，輸入網址：

localhost:3000
若成功應該出現 You are on Rails! 畫面： 
恭喜你完成第一個 Rails app！！！