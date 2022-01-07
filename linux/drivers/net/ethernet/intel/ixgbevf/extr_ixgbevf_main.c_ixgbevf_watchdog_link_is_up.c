
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ixgbevf_adapter {scalar_t__ link_speed; TYPE_1__* pdev; struct net_device* netdev; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ IXGBE_LINK_SPEED_100_FULL ;
 scalar_t__ IXGBE_LINK_SPEED_10GB_FULL ;
 scalar_t__ IXGBE_LINK_SPEED_1GB_FULL ;
 int dev_info (int *,char*,char*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;

__attribute__((used)) static void ixgbevf_watchdog_link_is_up(struct ixgbevf_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;


 if (netif_carrier_ok(netdev))
  return;

 dev_info(&adapter->pdev->dev, "NIC Link is Up %s\n",
   (adapter->link_speed == IXGBE_LINK_SPEED_10GB_FULL) ?
   "10 Gbps" :
   (adapter->link_speed == IXGBE_LINK_SPEED_1GB_FULL) ?
   "1 Gbps" :
   (adapter->link_speed == IXGBE_LINK_SPEED_100_FULL) ?
   "100 Mbps" :
   "unknown speed");

 netif_carrier_on(netdev);
}
