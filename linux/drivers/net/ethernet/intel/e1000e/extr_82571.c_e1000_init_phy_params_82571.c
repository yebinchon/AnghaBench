
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int set_d3_lplu_state; int set_d0_lplu_state; int release; int acquire; int power_down; int power_up; } ;
struct e1000_phy_info {scalar_t__ media_type; int addr; int reset_delay_us; int id; TYPE_1__ ops; int type; int autoneg_mask; } ;
struct TYPE_4__ {int type; } ;
struct e1000_hw {TYPE_2__ mac; struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int AUTONEG_ADVERTISE_SPEED_DEFAULT ;
 int BME1000_E_PHY_ID_R2 ;
 scalar_t__ E1000_ERR_PHY ;
 int IGP01E1000_I_PHY_ID ;
 int M88E1111_I_PHY_ID ;





 int e1000_get_hw_semaphore_82574 ;
 scalar_t__ e1000_get_phy_id_82571 (struct e1000_hw*) ;
 scalar_t__ e1000_media_type_copper ;
 int e1000_phy_bm ;
 int e1000_phy_igp_2 ;
 int e1000_phy_m88 ;
 int e1000_phy_none ;
 int e1000_power_down_phy_copper_82571 ;
 int e1000_power_up_phy_copper ;
 int e1000_put_hw_semaphore_82574 ;
 int e1000_set_d0_lplu_state_82574 ;
 int e1000_set_d3_lplu_state_82574 ;
 int e_dbg (char*,...) ;

__attribute__((used)) static s32 e1000_init_phy_params_82571(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;

 if (hw->phy.media_type != e1000_media_type_copper) {
  phy->type = e1000_phy_none;
  return 0;
 }

 phy->addr = 1;
 phy->autoneg_mask = AUTONEG_ADVERTISE_SPEED_DEFAULT;
 phy->reset_delay_us = 100;

 phy->ops.power_up = e1000_power_up_phy_copper;
 phy->ops.power_down = e1000_power_down_phy_copper_82571;

 switch (hw->mac.type) {
 case 132:
 case 131:
  phy->type = e1000_phy_igp_2;
  break;
 case 130:
  phy->type = e1000_phy_m88;
  break;
 case 129:
 case 128:
  phy->type = e1000_phy_bm;
  phy->ops.acquire = e1000_get_hw_semaphore_82574;
  phy->ops.release = e1000_put_hw_semaphore_82574;
  phy->ops.set_d0_lplu_state = e1000_set_d0_lplu_state_82574;
  phy->ops.set_d3_lplu_state = e1000_set_d3_lplu_state_82574;
  break;
 default:
  return -E1000_ERR_PHY;
 }


 ret_val = e1000_get_phy_id_82571(hw);
 if (ret_val) {
  e_dbg("Error getting PHY ID\n");
  return ret_val;
 }


 switch (hw->mac.type) {
 case 132:
 case 131:
  if (phy->id != IGP01E1000_I_PHY_ID)
   ret_val = -E1000_ERR_PHY;
  break;
 case 130:
  if (phy->id != M88E1111_I_PHY_ID)
   ret_val = -E1000_ERR_PHY;
  break;
 case 129:
 case 128:
  if (phy->id != BME1000_E_PHY_ID_R2)
   ret_val = -E1000_ERR_PHY;
  break;
 default:
  ret_val = -E1000_ERR_PHY;
  break;
 }

 if (ret_val)
  e_dbg("PHY ID unknown: type = 0x%08x\n", phy->id);

 return ret_val;
}
