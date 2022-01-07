
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct igb_adapter {int* shadow_vfta; int vfs_allocated_count; } ;
struct TYPE_3__ {int (* write_vfta ) (struct e1000_hw*,int,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ mac; struct igb_adapter* back; } ;
typedef scalar_t__ s32 ;


 int BIT (int) ;
 scalar_t__ E1000_ERR_PARAM ;
 int E1000_VLVF (scalar_t__) ;
 int E1000_VLVF_POOLSEL_MASK ;
 int E1000_VLVF_POOLSEL_SHIFT ;
 int E1000_VLVF_VLANID_ENABLE ;
 scalar_t__ igb_find_vlvf_slot (struct e1000_hw*,int,int) ;
 int rd32 (int ) ;
 int stub1 (struct e1000_hw*,int,int) ;
 int stub2 (struct e1000_hw*,int,int) ;
 int wr32 (int ,int) ;

s32 igb_vfta_set(struct e1000_hw *hw, u32 vlan, u32 vind,
   bool vlan_on, bool vlvf_bypass)
{
 struct igb_adapter *adapter = hw->back;
 u32 regidx, vfta_delta, vfta, bits;
 s32 vlvf_index;

 if ((vlan > 4095) || (vind > 7))
  return -E1000_ERR_PARAM;
 regidx = vlan / 32;
 vfta_delta = BIT(vlan % 32);
 vfta = adapter->shadow_vfta[regidx];





 vfta_delta &= vlan_on ? ~vfta : vfta;
 vfta ^= vfta_delta;
 if (!adapter->vfs_allocated_count)
  goto vfta_update;

 vlvf_index = igb_find_vlvf_slot(hw, vlan, vlvf_bypass);
 if (vlvf_index < 0) {
  if (vlvf_bypass)
   goto vfta_update;
  return vlvf_index;
 }

 bits = rd32(E1000_VLVF(vlvf_index));


 bits |= BIT(E1000_VLVF_POOLSEL_SHIFT + vind);
 if (vlan_on)
  goto vlvf_update;


 bits ^= BIT(E1000_VLVF_POOLSEL_SHIFT + vind);

 if (!(bits & E1000_VLVF_POOLSEL_MASK)) {




  if (vfta_delta)
   hw->mac.ops.write_vfta(hw, regidx, vfta);


  wr32(E1000_VLVF(vlvf_index), 0);

  return 0;
 }
 vfta_delta = 0;

vlvf_update:

 wr32(E1000_VLVF(vlvf_index), bits | vlan | E1000_VLVF_VLANID_ENABLE);

vfta_update:

 if (vfta_delta)
  hw->mac.ops.write_vfta(hw, regidx, vfta);

 return 0;
}
