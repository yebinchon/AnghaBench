
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_wolinfo {int supported; int wolopts; } ;
struct e1000_hw {int device_id; } ;
struct e1000_adapter {int wol; TYPE_1__* pdev; struct e1000_hw hw; } ;
struct TYPE_2__ {int dev; } ;



 int E1000_WUFC_BC ;
 int E1000_WUFC_EX ;
 int E1000_WUFC_MAG ;
 int E1000_WUFC_MC ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MCAST ;
 int WAKE_UCAST ;
 int device_can_wakeup (int *) ;
 int drv ;
 scalar_t__ e1000_wol_exclusion (struct e1000_adapter*,struct ethtool_wolinfo*) ;
 int e_err (int ,char*) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void e1000_get_wol(struct net_device *netdev,
     struct ethtool_wolinfo *wol)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;

 wol->supported = WAKE_UCAST | WAKE_MCAST | WAKE_BCAST | WAKE_MAGIC;
 wol->wolopts = 0;




 if (e1000_wol_exclusion(adapter, wol) ||
     !device_can_wakeup(&adapter->pdev->dev))
  return;


 switch (hw->device_id) {
 case 128:

  wol->supported &= ~WAKE_UCAST;

  if (adapter->wol & E1000_WUFC_EX)
   e_err(drv, "Interface does not support directed "
         "(unicast) frame wake-up packets\n");
  break;
 default:
  break;
 }

 if (adapter->wol & E1000_WUFC_EX)
  wol->wolopts |= WAKE_UCAST;
 if (adapter->wol & E1000_WUFC_MC)
  wol->wolopts |= WAKE_MCAST;
 if (adapter->wol & E1000_WUFC_BC)
  wol->wolopts |= WAKE_BCAST;
 if (adapter->wol & E1000_WUFC_MAG)
  wol->wolopts |= WAKE_MAGIC;
}
