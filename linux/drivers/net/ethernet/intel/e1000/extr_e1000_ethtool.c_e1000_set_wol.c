
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct e1000_hw {int device_id; } ;
struct e1000_adapter {int wol; TYPE_1__* pdev; struct e1000_hw hw; } ;
struct TYPE_2__ {int dev; } ;



 int E1000_WUFC_BC ;
 int E1000_WUFC_EX ;
 int E1000_WUFC_MAG ;
 int E1000_WUFC_MC ;
 int EOPNOTSUPP ;
 int WAKE_ARP ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MAGICSECURE ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 int device_can_wakeup (int *) ;
 int device_set_wakeup_enable (int *,int ) ;
 int drv ;
 scalar_t__ e1000_wol_exclusion (struct e1000_adapter*,struct ethtool_wolinfo*) ;
 int e_err (int ,char*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e1000_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;

 if (wol->wolopts & (WAKE_PHY | WAKE_ARP | WAKE_MAGICSECURE))
  return -EOPNOTSUPP;

 if (e1000_wol_exclusion(adapter, wol) ||
     !device_can_wakeup(&adapter->pdev->dev))
  return wol->wolopts ? -EOPNOTSUPP : 0;

 switch (hw->device_id) {
 case 128:
  if (wol->wolopts & WAKE_UCAST) {
   e_err(drv, "Interface does not support directed "
         "(unicast) frame wake-up packets\n");
   return -EOPNOTSUPP;
  }
  break;
 default:
  break;
 }


 adapter->wol = 0;

 if (wol->wolopts & WAKE_UCAST)
  adapter->wol |= E1000_WUFC_EX;
 if (wol->wolopts & WAKE_MCAST)
  adapter->wol |= E1000_WUFC_MC;
 if (wol->wolopts & WAKE_BCAST)
  adapter->wol |= E1000_WUFC_BC;
 if (wol->wolopts & WAKE_MAGIC)
  adapter->wol |= E1000_WUFC_MAG;

 device_set_wakeup_enable(&adapter->pdev->dev, adapter->wol);

 return 0;
}
