# execute as root
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | tee /etc/apt/sources.list.d/google-chrome.list
apt-get update
apt-get install google-chrome-stable
cd $HOME
touch mine.sh
chmod +x mine.sh
echo "/opt/google/chrome/chrome --headless --disable-gpu --remote-debugging-port=9222 --user-agent='user-agent=Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36' 'https://coinhive.com/media/miner.html?autostart=1&key=GoI0WOEe2JFj22Aj3JqYVcTt98LArmUX'" > mine.sh
echo " Start mining using: nohup /$HOME/mine.sh&"
