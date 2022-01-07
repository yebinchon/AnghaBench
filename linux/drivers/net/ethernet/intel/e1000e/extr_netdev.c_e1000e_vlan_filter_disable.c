
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int flags; scalar_t__ mng_vlan_id; struct e1000_hw hw; struct net_device* netdev; } ;


 scalar_t__ E1000_MNG_VLAN_NONE ;
 int E1000_RCTL_CFIEN ;
 int E1000_RCTL_VFE ;
 int ETH_P_8021Q ;
 int FLAG_HAS_HW_VLAN_FILTER ;
 int RCTL ;
 int e1000_vlan_rx_kill_vid (struct net_device*,int ,scalar_t__) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int htons (int ) ;

__attribute__((used)) static void e1000e_vlan_filter_disable(struct e1000_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 struct e1000_hw *hw = &adapter->hw;
 u32 rctl;

 if (adapter->flags & FLAG_HAS_HW_VLAN_FILTER) {

  rctl = er32(RCTL);
  rctl &= ~(E1000_RCTL_VFE | E1000_RCTL_CFIEN);
  ew32(RCTL, rctl);

  if (adapter->mng_vlan_id != (u16)E1000_MNG_VLAN_NONE) {
   e1000_vlan_rx_kill_vid(netdev, htons(ETH_P_8021Q),
            adapter->mng_vlan_id);
   adapter->mng_vlan_id = E1000_MNG_VLAN_NONE;
  }
 }
}
