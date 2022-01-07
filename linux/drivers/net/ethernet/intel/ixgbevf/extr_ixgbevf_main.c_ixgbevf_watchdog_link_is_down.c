
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ixgbevf_adapter {TYPE_1__* pdev; scalar_t__ link_speed; struct net_device* netdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_info (int *,char*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;

__attribute__((used)) static void ixgbevf_watchdog_link_is_down(struct ixgbevf_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;

 adapter->link_speed = 0;


 if (!netif_carrier_ok(netdev))
  return;

 dev_info(&adapter->pdev->dev, "NIC Link is Down\n");

 netif_carrier_off(netdev);
}
