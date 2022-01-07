
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int ixgbe_set_pcie_completion_timeout (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_start_hw_generic (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_start_hw_82598(struct ixgbe_hw *hw)
{
 s32 ret_val;

 ret_val = ixgbe_start_hw_generic(hw);
 if (ret_val)
  return ret_val;


 ixgbe_set_pcie_completion_timeout(hw);

 return 0;
}
