
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int orig_autoc; scalar_t__ orig_link_settings_stored; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
typedef int s32 ;
typedef int ixgbe_link_speed ;


 int IXGBE_AUTOC ;
 int IXGBE_AUTOC_KX4_SUPP ;
 int IXGBE_AUTOC_KX_SUPP ;





 int IXGBE_AUTOC_LMS_MASK ;
 int IXGBE_ERR_LINK_SETUP ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_LINK_SPEED_UNKNOWN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;

__attribute__((used)) static s32 ixgbe_get_link_capabilities_82598(struct ixgbe_hw *hw,
          ixgbe_link_speed *speed,
          bool *autoneg)
{
 u32 autoc = 0;






 if (hw->mac.orig_link_settings_stored)
  autoc = hw->mac.orig_autoc;
 else
  autoc = IXGBE_READ_REG(hw, IXGBE_AUTOC);

 switch (autoc & IXGBE_AUTOC_LMS_MASK) {
 case 130:
  *speed = IXGBE_LINK_SPEED_1GB_FULL;
  *autoneg = 0;
  break;

 case 132:
  *speed = IXGBE_LINK_SPEED_10GB_FULL;
  *autoneg = 0;
  break;

 case 131:
  *speed = IXGBE_LINK_SPEED_1GB_FULL;
  *autoneg = 1;
  break;

 case 129:
 case 128:
  *speed = IXGBE_LINK_SPEED_UNKNOWN;
  if (autoc & IXGBE_AUTOC_KX4_SUPP)
   *speed |= IXGBE_LINK_SPEED_10GB_FULL;
  if (autoc & IXGBE_AUTOC_KX_SUPP)
   *speed |= IXGBE_LINK_SPEED_1GB_FULL;
  *autoneg = 1;
  break;

 default:
  return IXGBE_ERR_LINK_SETUP;
 }

 return 0;
}
