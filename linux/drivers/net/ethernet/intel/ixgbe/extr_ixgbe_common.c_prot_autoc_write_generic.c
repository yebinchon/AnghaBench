
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_AUTOC ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;

s32 prot_autoc_write_generic(struct ixgbe_hw *hw, u32 reg_val, bool locked)
{
 IXGBE_WRITE_REG(hw, IXGBE_AUTOC, reg_val);
 return 0;
}
