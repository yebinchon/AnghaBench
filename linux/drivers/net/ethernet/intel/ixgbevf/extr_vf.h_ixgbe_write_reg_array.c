
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int ixgbe_write_reg (struct ixgbe_hw*,int,int) ;

__attribute__((used)) static inline void ixgbe_write_reg_array(struct ixgbe_hw *hw, u32 reg,
      u32 offset, u32 value)
{
 ixgbe_write_reg(hw, reg + (offset << 2), value);
}
