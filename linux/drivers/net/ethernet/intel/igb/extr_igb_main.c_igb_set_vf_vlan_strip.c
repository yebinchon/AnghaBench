
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {struct e1000_hw hw; } ;


 int E1000_DVMOLR (int) ;
 int E1000_VMOLR (int) ;
 int E1000_VMOLR_STRVLAN ;
 scalar_t__ e1000_82576 ;
 scalar_t__ e1000_i350 ;
 int rd32 (int ) ;
 int wr32 (int ,int ) ;

__attribute__((used)) static inline void igb_set_vf_vlan_strip(struct igb_adapter *adapter,
      int vfn, bool enable)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 val, reg;

 if (hw->mac.type < e1000_82576)
  return;

 if (hw->mac.type == e1000_i350)
  reg = E1000_DVMOLR(vfn);
 else
  reg = E1000_VMOLR(vfn);

 val = rd32(reg);
 if (enable)
  val |= E1000_VMOLR_STRVLAN;
 else
  val &= ~(E1000_VMOLR_STRVLAN);
 wr32(reg, val);
}
