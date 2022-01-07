
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct mrf24j40 {struct sk_buff* tx_skb; } ;
struct ieee802154_hw {struct mrf24j40* priv; } ;


 int dev_dbg (int ,char*,int ) ;
 int printdev (struct mrf24j40*) ;
 int write_tx_buf (struct mrf24j40*,int,int ,int ) ;

__attribute__((used)) static int mrf24j40_tx(struct ieee802154_hw *hw, struct sk_buff *skb)
{
 struct mrf24j40 *devrec = hw->priv;

 dev_dbg(printdev(devrec), "tx packet of %d bytes\n", skb->len);
 devrec->tx_skb = skb;

 return write_tx_buf(devrec, 0x000, skb->data, skb->len);
}
