# Created a SegWit address.
ADDRESS=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" bech32m)
# Add funds to the address.
bitcoin-cli -regtest generatetoaddress 101 $ADDRESS
# Return only the Address
echo "$ADDRESS"