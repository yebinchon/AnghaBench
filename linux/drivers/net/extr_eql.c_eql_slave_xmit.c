
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; int priority; struct net_device* dev; } ;
struct TYPE_7__ {int tx_dropped; int tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_8__ {int bytes_queued; struct net_device* dev; } ;
typedef TYPE_2__ slave_t ;
typedef int netdev_tx_t ;
struct TYPE_10__ {int lock; } ;
struct TYPE_9__ {TYPE_6__ queue; } ;
typedef TYPE_3__ equalizer_t ;


 int NETDEV_TX_OK ;
 int TC_PRIO_FILLER ;
 TYPE_2__* __eql_schedule_slaves (TYPE_6__*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dev_queue_xmit (struct sk_buff*) ;
 TYPE_3__* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static netdev_tx_t eql_slave_xmit(struct sk_buff *skb, struct net_device *dev)
{
 equalizer_t *eql = netdev_priv(dev);
 slave_t *slave;

 spin_lock(&eql->queue.lock);

 slave = __eql_schedule_slaves(&eql->queue);
 if (slave) {
  struct net_device *slave_dev = slave->dev;

  skb->dev = slave_dev;
  skb->priority = TC_PRIO_FILLER;
  slave->bytes_queued += skb->len;
  dev_queue_xmit(skb);
  dev->stats.tx_packets++;
 } else {
  dev->stats.tx_dropped++;
  dev_kfree_skb(skb);
 }

 spin_unlock(&eql->queue.lock);

 return NETDEV_TX_OK;
}
