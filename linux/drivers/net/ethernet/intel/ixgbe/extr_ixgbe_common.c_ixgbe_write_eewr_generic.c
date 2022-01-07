
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int ixgbe_write_eewr_buffer_generic (struct ixgbe_hw*,int ,int,int *) ;

s32 ixgbe_write_eewr_generic(struct ixgbe_hw *hw, u16 offset, u16 data)
{
 return ixgbe_write_eewr_buffer_generic(hw, offset, 1, &data);
}
