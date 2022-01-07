
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int vfs_allocated_count; struct e1000_hw hw; } ;
typedef int netdev_features_t ;


 int E1000_CTRL ;
 int E1000_CTRL_VME ;
 int E1000_RCTL ;
 int E1000_RCTL_CFIEN ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int igb_set_vf_vlan_strip (struct igb_adapter*,int ,int) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int rd32 (int ) ;
 int wr32 (int ,int ) ;

__attribute__((used)) static void igb_vlan_mode(struct net_device *netdev, netdev_features_t features)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u32 ctrl, rctl;
 bool enable = !!(features & NETIF_F_HW_VLAN_CTAG_RX);

 if (enable) {

  ctrl = rd32(E1000_CTRL);
  ctrl |= E1000_CTRL_VME;
  wr32(E1000_CTRL, ctrl);


  rctl = rd32(E1000_RCTL);
  rctl &= ~E1000_RCTL_CFIEN;
  wr32(E1000_RCTL, rctl);
 } else {

  ctrl = rd32(E1000_CTRL);
  ctrl &= ~E1000_CTRL_VME;
  wr32(E1000_CTRL, ctrl);
 }

 igb_set_vf_vlan_strip(adapter, adapter->vfs_allocated_count, enable);
}
