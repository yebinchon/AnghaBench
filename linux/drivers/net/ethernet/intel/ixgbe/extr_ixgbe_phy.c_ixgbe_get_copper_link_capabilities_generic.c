
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ speeds_supported; } ;
struct ixgbe_hw {TYPE_1__ phy; } ;
typedef int s32 ;
typedef scalar_t__ ixgbe_link_speed ;


 int ixgbe_get_copper_speeds_supported (struct ixgbe_hw*) ;

s32 ixgbe_get_copper_link_capabilities_generic(struct ixgbe_hw *hw,
            ixgbe_link_speed *speed,
            bool *autoneg)
{
 s32 status = 0;

 *autoneg = 1;
 if (!hw->phy.speeds_supported)
  status = ixgbe_get_copper_speeds_supported(hw);

 *speed = hw->phy.speeds_supported;
 return status;
}
