
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_AUTOC ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;

s32 prot_autoc_read_generic(struct ixgbe_hw *hw, bool *locked, u32 *reg_val)
{
 *locked = 0;
 *reg_val = IXGBE_READ_REG(hw, IXGBE_AUTOC);
 return 0;
}
