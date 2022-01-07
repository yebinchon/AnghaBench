
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct p54_common {int tx_queue; } ;
struct ieee80211_hw {struct p54_common* priv; } ;


 int ieee80211_free_txskb (struct ieee80211_hw*,struct sk_buff*) ;
 int p54_tx_qos_accounting_free (struct p54_common*,struct sk_buff*) ;
 int skb_unlink (struct sk_buff*,int *) ;
 scalar_t__ unlikely (int) ;

void p54_free_skb(struct ieee80211_hw *dev, struct sk_buff *skb)
{
 struct p54_common *priv = dev->priv;
 if (unlikely(!skb))
  return ;

 skb_unlink(skb, &priv->tx_queue);
 p54_tx_qos_accounting_free(priv, skb);
 ieee80211_free_txskb(dev, skb);
}
