#!/bin/bash

#Get the necessary components
apt-get update
apt-get install awesome tightvncserver -y
apt-get install xfe -y
apt-get clean

#Setup the necessary files
mkdir ~/.vnc
wget https://github.com/tommysllee/ltcwalletprivateserver/blob/master/Scripts/WindowManager/Apt/Awesome/xstartup -P ~/.vnc/
wget https://github.com/tommysllee/ltcwalletprivateserver/blob/master/Scripts/WindowManager/Apt/Awesome/vncserver-start -P /usr/local/bin/
wget https://github.com/tommysllee/ltcwalletprivateserver/blob/master/Scripts/WindowManager/Apt/Awesome/vncserver-stop -P /usr/local/bin/

chmod +x ~/.vnc/xstartup
chmod +x /usr/local/bin/vncserver-start
chmod +x /usr/local/bin/vncserver-stop



echo "export DISPLAY=":1"" >> /etc/profile
source /etc/profile

vncserver-start
