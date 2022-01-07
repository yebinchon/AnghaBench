
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int num_tx_queues; } ;
struct ifb_q_private {int tq; int rq; int ifb_tasklet; } ;
struct ifb_dev_private {struct ifb_q_private* tx_private; } ;


 int __skb_queue_purge (int *) ;
 int kfree (struct ifb_q_private*) ;
 struct ifb_dev_private* netdev_priv (struct net_device*) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void ifb_dev_free(struct net_device *dev)
{
 struct ifb_dev_private *dp = netdev_priv(dev);
 struct ifb_q_private *txp = dp->tx_private;
 int i;

 for (i = 0; i < dev->num_tx_queues; i++,txp++) {
  tasklet_kill(&txp->ifb_tasklet);
  __skb_queue_purge(&txp->rq);
  __skb_queue_purge(&txp->tq);
 }
 kfree(dp->tx_private);
}
