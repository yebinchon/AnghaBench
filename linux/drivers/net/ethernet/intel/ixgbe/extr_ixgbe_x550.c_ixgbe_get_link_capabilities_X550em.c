
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; int speeds_supported; scalar_t__ media_type; scalar_t__ sfp_type; int nw_mng_if_sel; scalar_t__ multispeed_fiber; } ;
struct TYPE_3__ {int type; } ;
struct ixgbe_hw {int device_id; TYPE_2__ phy; TYPE_1__ mac; } ;
typedef int s32 ;
typedef int ixgbe_link_speed ;


 int IXGBE_DEV_ID_X550EM_A_KR_L ;
 int IXGBE_LINK_SPEED_10GB_FULL ;
 int IXGBE_LINK_SPEED_1GB_FULL ;
 int IXGBE_LINK_SPEED_2_5GB_FULL ;
 int IXGBE_NW_MNG_IF_SEL_PHY_SPEED_2_5G ;
 int ixgbe_mac_x550em_a ;
 scalar_t__ ixgbe_media_type_fiber ;

 int ixgbe_phy_fw ;




 scalar_t__ ixgbe_sfp_type_1g_lx_core0 ;
 scalar_t__ ixgbe_sfp_type_1g_lx_core1 ;
 scalar_t__ ixgbe_sfp_type_1g_sx_core0 ;
 scalar_t__ ixgbe_sfp_type_1g_sx_core1 ;

__attribute__((used)) static s32 ixgbe_get_link_capabilities_X550em(struct ixgbe_hw *hw,
           ixgbe_link_speed *speed,
           bool *autoneg)
{
 if (hw->phy.type == ixgbe_phy_fw) {
  *autoneg = 1;
  *speed = hw->phy.speeds_supported;
  return 0;
 }


 if (hw->phy.media_type == ixgbe_media_type_fiber) {

  *autoneg = 0;

  if (hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core0 ||
      hw->phy.sfp_type == ixgbe_sfp_type_1g_sx_core1 ||
      hw->phy.sfp_type == ixgbe_sfp_type_1g_lx_core0 ||
      hw->phy.sfp_type == ixgbe_sfp_type_1g_lx_core1) {
   *speed = IXGBE_LINK_SPEED_1GB_FULL;
   return 0;
  }


  if (hw->phy.multispeed_fiber)
   *speed = IXGBE_LINK_SPEED_10GB_FULL |
     IXGBE_LINK_SPEED_1GB_FULL;
  else
   *speed = IXGBE_LINK_SPEED_10GB_FULL;
 } else {
  switch (hw->phy.type) {
  case 129:
   *speed = IXGBE_LINK_SPEED_1GB_FULL |
     IXGBE_LINK_SPEED_2_5GB_FULL |
     IXGBE_LINK_SPEED_10GB_FULL;
   break;
  case 128:
   *speed = IXGBE_LINK_SPEED_1GB_FULL |
     IXGBE_LINK_SPEED_10GB_FULL;
   break;
  case 132:
  case 131:
   *speed = IXGBE_LINK_SPEED_1GB_FULL;
   break;
  case 130:
   if (hw->mac.type == ixgbe_mac_x550em_a) {

    if (hw->phy.nw_mng_if_sel &
        IXGBE_NW_MNG_IF_SEL_PHY_SPEED_2_5G) {
     *speed = IXGBE_LINK_SPEED_2_5GB_FULL;
     break;
    } else if (hw->device_id ==
        IXGBE_DEV_ID_X550EM_A_KR_L) {
     *speed = IXGBE_LINK_SPEED_1GB_FULL;
     break;
    }
   }

  default:
   *speed = IXGBE_LINK_SPEED_10GB_FULL |
     IXGBE_LINK_SPEED_1GB_FULL;
   break;
  }
  *autoneg = 1;
 }
 return 0;
}
