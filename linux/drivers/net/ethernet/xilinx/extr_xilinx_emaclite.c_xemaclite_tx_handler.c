
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_local {TYPE_2__* deferred_skb; } ;
struct TYPE_3__ {int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_4__ {scalar_t__ len; scalar_t__ data; } ;


 int dev_consume_skb_irq (TYPE_2__*) ;
 struct net_local* netdev_priv (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 scalar_t__ xemaclite_send_data (struct net_local*,int *,scalar_t__) ;

__attribute__((used)) static void xemaclite_tx_handler(struct net_device *dev)
{
 struct net_local *lp = netdev_priv(dev);

 dev->stats.tx_packets++;

 if (!lp->deferred_skb)
  return;

 if (xemaclite_send_data(lp, (u8 *)lp->deferred_skb->data,
    lp->deferred_skb->len))
  return;

 dev->stats.tx_bytes += lp->deferred_skb->len;
 dev_consume_skb_irq(lp->deferred_skb);
 lp->deferred_skb = ((void*)0);
 netif_trans_update(dev);
 netif_wake_queue(dev);
}
