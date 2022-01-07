
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* ahw; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int linkup; scalar_t__ lb_mode; } ;


 int netdev_info (struct net_device*,char*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;

void qlcnic_advert_link_change(struct qlcnic_adapter *adapter, int linkup)
{
 struct net_device *netdev = adapter->netdev;

 if (adapter->ahw->linkup && !linkup) {
  netdev_info(netdev, "NIC Link is down\n");
  adapter->ahw->linkup = 0;
  netif_carrier_off(netdev);
 } else if (!adapter->ahw->linkup && linkup) {
  adapter->ahw->linkup = 1;




  if (qlcnic_83xx_check(adapter) && adapter->ahw->lb_mode) {
   netdev_info(netdev, "NIC Link is up for loopback test\n");
   return;
  }

  netdev_info(netdev, "NIC Link is up\n");
  netif_carrier_on(netdev);
 }
}
