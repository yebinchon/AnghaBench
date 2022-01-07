
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int autoneg_advertised; } ;
struct ixgbe_hw {TYPE_1__ phy; } ;
typedef int s32 ;


 int IXGBE_LINK_SPEED_2_5GB_FULL ;
 scalar_t__ ixgbe_check_reset_blocked (struct ixgbe_hw*) ;
 int ixgbe_setup_kr_speed_x550em (struct ixgbe_hw*,int) ;

__attribute__((used)) static s32 ixgbe_setup_kr_x550em(struct ixgbe_hw *hw)
{

 if (hw->phy.autoneg_advertised & IXGBE_LINK_SPEED_2_5GB_FULL)
  return 0;

 if (ixgbe_check_reset_blocked(hw))
  return 0;

 return ixgbe_setup_kr_speed_x550em(hw, hw->phy.autoneg_advertised);
}
