
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int vlan_id; } ;
struct TYPE_3__ {int type; } ;
struct e1000_hw {TYPE_2__ mng_cookie; TYPE_1__ mac; } ;


 scalar_t__ BIT (int) ;
 int E1000_VFTA ;
 int E1000_VFTA_ENTRY_BIT_SHIFT_MASK ;
 scalar_t__ E1000_VFTA_ENTRY_MASK ;
 scalar_t__ E1000_VFTA_ENTRY_SHIFT ;
 scalar_t__ E1000_VLAN_FILTER_TBL_SIZE ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,scalar_t__,scalar_t__) ;



 int e1e_flush () ;

__attribute__((used)) static void e1000_clear_vfta_82571(struct e1000_hw *hw)
{
 u32 offset;
 u32 vfta_value = 0;
 u32 vfta_offset = 0;
 u32 vfta_bit_in_reg = 0;

 switch (hw->mac.type) {
 case 130:
 case 129:
 case 128:
  if (hw->mng_cookie.vlan_id != 0) {






   vfta_offset = (hw->mng_cookie.vlan_id >>
           E1000_VFTA_ENTRY_SHIFT) &
       E1000_VFTA_ENTRY_MASK;
   vfta_bit_in_reg =
       BIT(hw->mng_cookie.vlan_id &
    E1000_VFTA_ENTRY_BIT_SHIFT_MASK);
  }
  break;
 default:
  break;
 }
 for (offset = 0; offset < E1000_VLAN_FILTER_TBL_SIZE; offset++) {




  vfta_value = (offset == vfta_offset) ? vfta_bit_in_reg : 0;
  E1000_WRITE_REG_ARRAY(hw, E1000_VFTA, offset, vfta_value);
  e1e_flush();
 }
}
