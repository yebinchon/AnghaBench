
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct bcm_sysport_priv {unsigned int num_rx_bds; struct bcm_sysport_cb* rx_cbs; } ;
struct bcm_sysport_cb {int skb; } ;


 int ENOMEM ;
 struct sk_buff* bcm_sysport_rx_refill (struct bcm_sysport_priv*,struct bcm_sysport_cb*) ;
 int dev_kfree_skb (struct sk_buff*) ;

__attribute__((used)) static int bcm_sysport_alloc_rx_bufs(struct bcm_sysport_priv *priv)
{
 struct bcm_sysport_cb *cb;
 struct sk_buff *skb;
 unsigned int i;

 for (i = 0; i < priv->num_rx_bds; i++) {
  cb = &priv->rx_cbs[i];
  skb = bcm_sysport_rx_refill(priv, cb);
  dev_kfree_skb(skb);
  if (!cb->skb)
   return -ENOMEM;
 }

 return 0;
}
