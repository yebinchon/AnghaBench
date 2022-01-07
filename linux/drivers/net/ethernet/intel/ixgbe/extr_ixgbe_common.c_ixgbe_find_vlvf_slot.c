
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_ERR_NO_SPACE ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VLVF (int) ;
 int IXGBE_VLVF_ENTRIES ;
 int IXGBE_VLVF_VIEN ;
 int hw_dbg (struct ixgbe_hw*,char*) ;

__attribute__((used)) static s32 ixgbe_find_vlvf_slot(struct ixgbe_hw *hw, u32 vlan, bool vlvf_bypass)
{
 s32 regindex, first_empty_slot;
 u32 bits;


 if (vlan == 0)
  return 0;





 first_empty_slot = vlvf_bypass ? IXGBE_ERR_NO_SPACE : 0;


 vlan |= IXGBE_VLVF_VIEN;






 for (regindex = IXGBE_VLVF_ENTRIES; --regindex;) {
  bits = IXGBE_READ_REG(hw, IXGBE_VLVF(regindex));
  if (bits == vlan)
   return regindex;
  if (!first_empty_slot && !bits)
   first_empty_slot = regindex;
 }




 if (!first_empty_slot)
  hw_dbg(hw, "No space in VLVF.\n");

 return first_empty_slot ? : IXGBE_ERR_NO_SPACE;
}
