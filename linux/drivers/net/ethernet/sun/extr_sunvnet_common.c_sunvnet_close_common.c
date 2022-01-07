
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int netif_carrier_off (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;

int sunvnet_close_common(struct net_device *dev)
{
 netif_tx_stop_all_queues(dev);
 netif_carrier_off(dev);

 return 0;
}
