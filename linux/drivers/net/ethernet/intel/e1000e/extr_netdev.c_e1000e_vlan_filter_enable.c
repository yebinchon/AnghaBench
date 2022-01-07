
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int flags; struct e1000_hw hw; } ;


 int E1000_RCTL_CFIEN ;
 int E1000_RCTL_VFE ;
 int FLAG_HAS_HW_VLAN_FILTER ;
 int RCTL ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;

__attribute__((used)) static void e1000e_vlan_filter_enable(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 rctl;

 if (adapter->flags & FLAG_HAS_HW_VLAN_FILTER) {

  rctl = er32(RCTL);
  rctl |= E1000_RCTL_VFE;
  rctl &= ~E1000_RCTL_CFIEN;
  ew32(RCTL, rctl);
 }
}
