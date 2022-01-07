
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int num_tx_queues; } ;
struct ifb_q_private {int txqnum; int ifb_tasklet; int tsync; int rsync; int tq; int rq; struct net_device* dev; } ;
struct ifb_dev_private {struct ifb_q_private* tx_private; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __skb_queue_head_init (int *) ;
 int ifb_ri_tasklet ;
 struct ifb_q_private* kcalloc (int,int,int ) ;
 int netdev_get_tx_queue (struct net_device*,int) ;
 struct ifb_dev_private* netdev_priv (struct net_device*) ;
 int netif_tx_start_queue (int ) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int u64_stats_init (int *) ;

__attribute__((used)) static int ifb_dev_init(struct net_device *dev)
{
 struct ifb_dev_private *dp = netdev_priv(dev);
 struct ifb_q_private *txp;
 int i;

 txp = kcalloc(dev->num_tx_queues, sizeof(*txp), GFP_KERNEL);
 if (!txp)
  return -ENOMEM;
 dp->tx_private = txp;
 for (i = 0; i < dev->num_tx_queues; i++,txp++) {
  txp->txqnum = i;
  txp->dev = dev;
  __skb_queue_head_init(&txp->rq);
  __skb_queue_head_init(&txp->tq);
  u64_stats_init(&txp->rsync);
  u64_stats_init(&txp->tsync);
  tasklet_init(&txp->ifb_tasklet, ifb_ri_tasklet,
        (unsigned long)txp);
  netif_tx_start_queue(netdev_get_tx_queue(dev, i));
 }
 return 0;
}
