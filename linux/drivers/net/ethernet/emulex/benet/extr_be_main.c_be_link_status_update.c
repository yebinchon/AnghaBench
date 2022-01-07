
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct net_device {int dummy; } ;
struct be_adapter {int flags; struct net_device* netdev; } ;


 int BE_FLAGS_LINK_STATUS_INIT ;
 int netdev_info (struct net_device*,char*,char*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;

void be_link_status_update(struct be_adapter *adapter, u8 link_status)
{
 struct net_device *netdev = adapter->netdev;

 if (!(adapter->flags & BE_FLAGS_LINK_STATUS_INIT)) {
  netif_carrier_off(netdev);
  adapter->flags |= BE_FLAGS_LINK_STATUS_INIT;
 }

 if (link_status)
  netif_carrier_on(netdev);
 else
  netif_carrier_off(netdev);

 netdev_info(netdev, "Link is %s\n", link_status ? "Up" : "Down");
}
