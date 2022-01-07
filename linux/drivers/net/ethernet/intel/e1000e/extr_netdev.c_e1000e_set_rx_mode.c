
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int parent; } ;
struct net_device {int flags; int features; TYPE_1__ dev; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int E1000_RCTL_MPE ;
 int E1000_RCTL_UPE ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int RCTL ;
 int e1000e_vlan_filter_disable (struct e1000_adapter*) ;
 int e1000e_vlan_filter_enable (struct e1000_adapter*) ;
 int e1000e_vlan_strip_disable (struct e1000_adapter*) ;
 int e1000e_vlan_strip_enable (struct e1000_adapter*) ;
 int e1000e_write_mc_addr_list (struct net_device*) ;
 int e1000e_write_uc_addr_list (struct net_device*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ pm_runtime_suspended (int ) ;

__attribute__((used)) static void e1000e_set_rx_mode(struct net_device *netdev)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u32 rctl;

 if (pm_runtime_suspended(netdev->dev.parent))
  return;


 rctl = er32(RCTL);


 rctl &= ~(E1000_RCTL_UPE | E1000_RCTL_MPE);

 if (netdev->flags & IFF_PROMISC) {
  rctl |= (E1000_RCTL_UPE | E1000_RCTL_MPE);

  e1000e_vlan_filter_disable(adapter);
 } else {
  int count;

  if (netdev->flags & IFF_ALLMULTI) {
   rctl |= E1000_RCTL_MPE;
  } else {




   count = e1000e_write_mc_addr_list(netdev);
   if (count < 0)
    rctl |= E1000_RCTL_MPE;
  }
  e1000e_vlan_filter_enable(adapter);




  count = e1000e_write_uc_addr_list(netdev);
  if (count < 0)
   rctl |= E1000_RCTL_UPE;
 }

 ew32(RCTL, rctl);

 if (netdev->features & NETIF_F_HW_VLAN_CTAG_RX)
  e1000e_vlan_strip_enable(adapter);
 else
  e1000e_vlan_strip_disable(adapter);
}
