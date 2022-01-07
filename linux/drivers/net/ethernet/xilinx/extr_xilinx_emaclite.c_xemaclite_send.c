
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct net_local {int reset_lock; struct sk_buff* deferred_skb; } ;
struct TYPE_2__ {unsigned int tx_bytes; } ;
struct net_device {TYPE_1__ stats; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int dev_consume_skb_any (struct sk_buff*) ;
 struct net_local* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int skb_tx_timestamp (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ xemaclite_send_data (struct net_local*,int *,unsigned int) ;

__attribute__((used)) static netdev_tx_t
xemaclite_send(struct sk_buff *orig_skb, struct net_device *dev)
{
 struct net_local *lp = netdev_priv(dev);
 struct sk_buff *new_skb;
 unsigned int len;
 unsigned long flags;

 len = orig_skb->len;

 new_skb = orig_skb;

 spin_lock_irqsave(&lp->reset_lock, flags);
 if (xemaclite_send_data(lp, (u8 *)new_skb->data, len) != 0) {




  netif_stop_queue(dev);
  lp->deferred_skb = new_skb;

  skb_tx_timestamp(new_skb);
  spin_unlock_irqrestore(&lp->reset_lock, flags);
  return NETDEV_TX_OK;
 }
 spin_unlock_irqrestore(&lp->reset_lock, flags);

 skb_tx_timestamp(new_skb);

 dev->stats.tx_bytes += len;
 dev_consume_skb_any(new_skb);

 return NETDEV_TX_OK;
}
