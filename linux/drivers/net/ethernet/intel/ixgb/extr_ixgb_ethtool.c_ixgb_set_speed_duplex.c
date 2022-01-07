
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgb_adapter {int link_speed; int link_duplex; } ;


 int FULL_DUPLEX ;
 struct ixgb_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

void ixgb_set_speed_duplex(struct net_device *netdev)
{
 struct ixgb_adapter *adapter = netdev_priv(netdev);

 adapter->link_speed = 10000;
 adapter->link_duplex = FULL_DUPLEX;
 netif_carrier_on(netdev);
 netif_wake_queue(netdev);
}
