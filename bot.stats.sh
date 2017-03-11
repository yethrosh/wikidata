echo "SELECT rev_comment FROM revision WHERE rev_user_text='Emijrpbot';" > bot.stats.query
sql wikidata < bot.stats.query > bot.stats.txt
echo 'Descriptions'
grep 'BOT - Adding descriptions' bot.stats.txt | grep -ioE '[0-9]+ languages' | cut -d' ' -f1 | awk '{ sum += $1 } END { print sum }'