
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int skb_iif; int tc_redirected; scalar_t__ len; } ;
struct TYPE_2__ {int rx_dropped; } ;
struct net_device {scalar_t__ tx_queue_len; TYPE_1__ stats; } ;
struct ifb_q_private {int tasklet_pending; int ifb_tasklet; int rq; int txqnum; int rsync; int rx_bytes; int rx_packets; } ;
struct ifb_dev_private {struct ifb_q_private* tx_private; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int netdev_get_tx_queue (struct net_device*,int ) ;
 struct ifb_dev_private* netdev_priv (struct net_device*) ;
 int netif_tx_stop_queue (int ) ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 scalar_t__ skb_queue_len (int *) ;
 int tasklet_schedule (int *) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;

__attribute__((used)) static netdev_tx_t ifb_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct ifb_dev_private *dp = netdev_priv(dev);
 struct ifb_q_private *txp = dp->tx_private + skb_get_queue_mapping(skb);

 u64_stats_update_begin(&txp->rsync);
 txp->rx_packets++;
 txp->rx_bytes += skb->len;
 u64_stats_update_end(&txp->rsync);

 if (!skb->tc_redirected || !skb->skb_iif) {
  dev_kfree_skb(skb);
  dev->stats.rx_dropped++;
  return NETDEV_TX_OK;
 }

 if (skb_queue_len(&txp->rq) >= dev->tx_queue_len)
  netif_tx_stop_queue(netdev_get_tx_queue(dev, txp->txqnum));

 __skb_queue_tail(&txp->rq, skb);
 if (!txp->tasklet_pending) {
  txp->tasklet_pending = 1;
  tasklet_schedule(&txp->ifb_tasklet);
 }

 return NETDEV_TX_OK;
}
