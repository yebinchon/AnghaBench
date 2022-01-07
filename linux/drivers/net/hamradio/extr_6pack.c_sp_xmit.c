
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ protocol; scalar_t__ len; int data; } ;
struct sixpack {int lock; } ;
struct TYPE_2__ {int tx_bytes; } ;
struct net_device {TYPE_1__ stats; } ;
typedef int netdev_tx_t ;


 int ETH_P_IP ;
 int NETDEV_TX_OK ;
 int ax25_ip_xmit (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 struct sixpack* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int sp_encaps (struct sixpack*,int ,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static netdev_tx_t sp_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct sixpack *sp = netdev_priv(dev);

 if (skb->protocol == htons(ETH_P_IP))
  return ax25_ip_xmit(skb);

 spin_lock_bh(&sp->lock);

 netif_stop_queue(dev);
 dev->stats.tx_bytes += skb->len;
 sp_encaps(sp, skb->data, skb->len);
 spin_unlock_bh(&sp->lock);

 dev_kfree_skb(skb);

 return NETDEV_TX_OK;
}
