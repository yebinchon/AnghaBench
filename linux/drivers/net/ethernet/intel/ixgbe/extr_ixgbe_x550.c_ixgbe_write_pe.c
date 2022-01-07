
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int IXGBE_PE ;
 int hw_err (struct ixgbe_hw*,char*,scalar_t__) ;
 scalar_t__ ixgbe_write_i2c_byte_generic_unlocked (struct ixgbe_hw*,int ,int ,int ) ;

__attribute__((used)) static s32 ixgbe_write_pe(struct ixgbe_hw *hw, u8 reg, u8 value)
{
 s32 status;

 status = ixgbe_write_i2c_byte_generic_unlocked(hw, reg, IXGBE_PE,
             value);
 if (status)
  hw_err(hw, "port expander access failed with %d\n", status);
 return status;
}
