
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ ixgbe_enable_lasi_ext_t_x550em (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_reset_phy_generic (struct ixgbe_hw*) ;

__attribute__((used)) static s32 ixgbe_reset_phy_t_X550em(struct ixgbe_hw *hw)
{
 s32 status;

 status = ixgbe_reset_phy_generic(hw);

 if (status)
  return status;


 return ixgbe_enable_lasi_ext_t_x550em(hw);
}
