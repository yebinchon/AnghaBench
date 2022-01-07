
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int num_tx_queues; } ;
struct TYPE_2__ {int trans_start; } ;


 int jiffies ;
 TYPE_1__* netdev_get_tx_queue (struct net_device*,int) ;
 int netif_trans_update (struct net_device*) ;

void mwifiex_set_trans_start(struct net_device *dev)
{
 int i;

 for (i = 0; i < dev->num_tx_queues; i++)
  netdev_get_tx_queue(dev, i)->trans_start = jiffies;

 netif_trans_update(dev);
}
