
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ixgbe_hw {int dummy; } ;


 scalar_t__ IXGBE_FAILED_READ_REG ;
 scalar_t__ IXGBE_VFSTATUS ;
 scalar_t__ ixgbevf_read_reg (struct ixgbe_hw*,scalar_t__) ;
 int ixgbevf_remove_adapter (struct ixgbe_hw*) ;

__attribute__((used)) static void ixgbevf_check_remove(struct ixgbe_hw *hw, u32 reg)
{
 u32 value;







 if (reg == IXGBE_VFSTATUS) {
  ixgbevf_remove_adapter(hw);
  return;
 }
 value = ixgbevf_read_reg(hw, IXGBE_VFSTATUS);
 if (value == IXGBE_FAILED_READ_REG)
  ixgbevf_remove_adapter(hw);
}
