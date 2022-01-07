
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {scalar_t__ mac_type; } ;


 int E1000_READ_REG_ARRAY (struct e1000_hw*,int ,int) ;
 int E1000_WRITE_FLUSH () ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,int,int) ;
 int VFTA ;
 scalar_t__ e1000_82544 ;

void e1000_write_vfta(struct e1000_hw *hw, u32 offset, u32 value)
{
 u32 temp;

 if ((hw->mac_type == e1000_82544) && ((offset & 0x1) == 1)) {
  temp = E1000_READ_REG_ARRAY(hw, VFTA, (offset - 1));
  E1000_WRITE_REG_ARRAY(hw, VFTA, offset, value);
  E1000_WRITE_FLUSH();
  E1000_WRITE_REG_ARRAY(hw, VFTA, (offset - 1), temp);
  E1000_WRITE_FLUSH();
 } else {
  E1000_WRITE_REG_ARRAY(hw, VFTA, offset, value);
  E1000_WRITE_FLUSH();
 }
}
