
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_SUCCESS ;
 scalar_t__ e1000_write_phy_reg (struct e1000_hw*,int,int) ;

__attribute__((used)) static s32 e1000_phy_reset_dsp(struct e1000_hw *hw)
{
 s32 ret_val;

 do {
  ret_val = e1000_write_phy_reg(hw, 29, 0x001d);
  if (ret_val)
   break;
  ret_val = e1000_write_phy_reg(hw, 30, 0x00c1);
  if (ret_val)
   break;
  ret_val = e1000_write_phy_reg(hw, 30, 0x0000);
  if (ret_val)
   break;
  ret_val = E1000_SUCCESS;
 } while (0);

 return ret_val;
}
