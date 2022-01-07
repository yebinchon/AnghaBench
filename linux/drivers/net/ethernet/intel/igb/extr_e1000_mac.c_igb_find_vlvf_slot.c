
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_NO_SPACE ;
 int E1000_VLVF (scalar_t__) ;
 scalar_t__ E1000_VLVF_ARRAY_SIZE ;
 int E1000_VLVF_VLANID_MASK ;
 int rd32 (int ) ;

__attribute__((used)) static s32 igb_find_vlvf_slot(struct e1000_hw *hw, u32 vlan, bool vlvf_bypass)
{
 s32 regindex, first_empty_slot;
 u32 bits;


 if (vlan == 0)
  return 0;





 first_empty_slot = vlvf_bypass ? -E1000_ERR_NO_SPACE : 0;






 for (regindex = E1000_VLVF_ARRAY_SIZE; --regindex > 0;) {
  bits = rd32(E1000_VLVF(regindex)) & E1000_VLVF_VLANID_MASK;
  if (bits == vlan)
   return regindex;
  if (!first_empty_slot && !bits)
   first_empty_slot = regindex;
 }

 return first_empty_slot ? : -E1000_ERR_NO_SPACE;
}
