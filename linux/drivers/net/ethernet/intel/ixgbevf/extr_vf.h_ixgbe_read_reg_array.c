
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int ixgbevf_read_reg (struct ixgbe_hw*,int) ;

__attribute__((used)) static inline u32 ixgbe_read_reg_array(struct ixgbe_hw *hw, u32 reg,
           u32 offset)
{
 return ixgbevf_read_reg(hw, reg + (offset << 2));
}
