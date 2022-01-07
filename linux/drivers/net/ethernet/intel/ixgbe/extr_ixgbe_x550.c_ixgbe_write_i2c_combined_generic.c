
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int ixgbe_write_i2c_combined_generic_int (struct ixgbe_hw*,int ,int ,int ,int) ;

__attribute__((used)) static s32 ixgbe_write_i2c_combined_generic(struct ixgbe_hw *hw,
         u8 addr, u16 reg, u16 val)
{
 return ixgbe_write_i2c_combined_generic_int(hw, addr, reg, val, 1);
}
