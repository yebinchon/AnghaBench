
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ixgbe_adapter {int wol; TYPE_1__* pdev; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct TYPE_2__ {int dev; } ;


 int EOPNOTSUPP ;
 int IXGBE_WUFC_BC ;
 int IXGBE_WUFC_EX ;
 int IXGBE_WUFC_MAG ;
 int IXGBE_WUFC_MC ;
 int WAKE_ARP ;
 int WAKE_BCAST ;
 int WAKE_FILTER ;
 int WAKE_MAGIC ;
 int WAKE_MAGICSECURE ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 int device_set_wakeup_enable (int *,int ) ;
 scalar_t__ ixgbe_wol_exclusion (struct ixgbe_adapter*,struct ethtool_wolinfo*) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 if (wol->wolopts & (WAKE_PHY | WAKE_ARP | WAKE_MAGICSECURE |
       WAKE_FILTER))
  return -EOPNOTSUPP;

 if (ixgbe_wol_exclusion(adapter, wol))
  return wol->wolopts ? -EOPNOTSUPP : 0;

 adapter->wol = 0;

 if (wol->wolopts & WAKE_UCAST)
  adapter->wol |= IXGBE_WUFC_EX;
 if (wol->wolopts & WAKE_MCAST)
  adapter->wol |= IXGBE_WUFC_MC;
 if (wol->wolopts & WAKE_BCAST)
  adapter->wol |= IXGBE_WUFC_BC;
 if (wol->wolopts & WAKE_MAGIC)
  adapter->wol |= IXGBE_WUFC_MAG;

 device_set_wakeup_enable(&adapter->pdev->dev, adapter->wol);

 return 0;
}
