
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ixgbe_adapter {int wol; TYPE_1__* pdev; } ;
struct ethtool_wolinfo {int supported; int wolopts; } ;
struct TYPE_2__ {int dev; } ;


 int IXGBE_WUFC_BC ;
 int IXGBE_WUFC_EX ;
 int IXGBE_WUFC_MAG ;
 int IXGBE_WUFC_MC ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MCAST ;
 int WAKE_UCAST ;
 int device_can_wakeup (int *) ;
 scalar_t__ ixgbe_wol_exclusion (struct ixgbe_adapter*,struct ethtool_wolinfo*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ixgbe_get_wol(struct net_device *netdev,
     struct ethtool_wolinfo *wol)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 wol->supported = WAKE_UCAST | WAKE_MCAST |
    WAKE_BCAST | WAKE_MAGIC;
 wol->wolopts = 0;

 if (ixgbe_wol_exclusion(adapter, wol) ||
     !device_can_wakeup(&adapter->pdev->dev))
  return;

 if (adapter->wol & IXGBE_WUFC_EX)
  wol->wolopts |= WAKE_UCAST;
 if (adapter->wol & IXGBE_WUFC_MC)
  wol->wolopts |= WAKE_MCAST;
 if (adapter->wol & IXGBE_WUFC_BC)
  wol->wolopts |= WAKE_BCAST;
 if (adapter->wol & IXGBE_WUFC_MAG)
  wol->wolopts |= WAKE_MAGIC;
}
