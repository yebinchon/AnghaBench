
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int netdev_warn (struct net_device*,char*) ;
 int netif_trans_update (struct net_device*) ;
 int netif_tx_wake_all_queues (struct net_device*) ;

__attribute__((used)) static void bcm_sysport_tx_timeout(struct net_device *dev)
{
 netdev_warn(dev, "transmit timeout!\n");

 netif_trans_update(dev);
 dev->stats.tx_errors++;

 netif_tx_wake_all_queues(dev);
}
