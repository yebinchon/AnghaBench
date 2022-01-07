
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int ixgbe_clock_in_i2c_bit (struct ixgbe_hw*,int*) ;

__attribute__((used)) static s32 ixgbe_clock_in_i2c_byte(struct ixgbe_hw *hw, u8 *data)
{
 s32 i;
 bool bit = 0;

 *data = 0;
 for (i = 7; i >= 0; i--) {
  ixgbe_clock_in_i2c_bit(hw, &bit);
  *data |= bit << i;
 }

 return 0;
}
