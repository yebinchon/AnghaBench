
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int autotry_restart; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 scalar_t__ ixgbe_start_hw_gen2 (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_start_hw_generic (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_verify_fw_version_82599 (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_start_hw_82599(struct ixgbe_hw *hw)
{
 s32 ret_val = 0;

 ret_val = ixgbe_start_hw_generic(hw);
 if (ret_val)
  return ret_val;

 ret_val = ixgbe_start_hw_gen2(hw);
 if (ret_val)
  return ret_val;


 hw->mac.autotry_restart = 1;

 return ixgbe_verify_fw_version_82599(hw);
}
