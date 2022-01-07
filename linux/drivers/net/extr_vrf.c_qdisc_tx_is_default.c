
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int qdisc; } ;
struct net_device {int num_tx_queues; } ;
struct Qdisc {int enqueue; } ;


 struct netdev_queue* netdev_get_tx_queue (struct net_device const*,int ) ;
 struct Qdisc* rcu_access_pointer (int ) ;

__attribute__((used)) static bool qdisc_tx_is_default(const struct net_device *dev)
{
 struct netdev_queue *txq;
 struct Qdisc *qdisc;

 if (dev->num_tx_queues > 1)
  return 0;

 txq = netdev_get_tx_queue(dev, 0);
 qdisc = rcu_access_pointer(txq->qdisc);

 return !qdisc->enqueue;
}
