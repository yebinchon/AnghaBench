
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* reset ) (struct igc_hw*) ;} ;
struct igc_phy_info {scalar_t__ media_type; int reset_delay_us; int id; int type; TYPE_2__ ops; int autoneg_mask; } ;
struct TYPE_3__ {int func; } ;
struct igc_hw {struct igc_phy_info phy; TYPE_1__ bus; } ;
typedef scalar_t__ s32 ;


 int AUTONEG_ADVERTISE_SPEED_DEFAULT_2500 ;

 scalar_t__ IGC_ERR_PHY ;
 int IGC_STATUS ;
 int IGC_STATUS_FUNC_MASK ;
 int IGC_STATUS_FUNC_SHIFT ;
 int hw_dbg (char*) ;
 int igc_check_for_copper_link (struct igc_hw*) ;
 scalar_t__ igc_get_phy_id (struct igc_hw*) ;
 scalar_t__ igc_media_type_copper ;
 int igc_phy_i225 ;
 int igc_phy_none ;
 int rd32 (int ) ;
 scalar_t__ stub1 (struct igc_hw*) ;

__attribute__((used)) static s32 igc_init_phy_params_base(struct igc_hw *hw)
{
 struct igc_phy_info *phy = &hw->phy;
 s32 ret_val = 0;

 if (hw->phy.media_type != igc_media_type_copper) {
  phy->type = igc_phy_none;
  goto out;
 }

 phy->autoneg_mask = AUTONEG_ADVERTISE_SPEED_DEFAULT_2500;
 phy->reset_delay_us = 100;


 hw->bus.func = (rd32(IGC_STATUS) & IGC_STATUS_FUNC_MASK) >>
   IGC_STATUS_FUNC_SHIFT;






 ret_val = hw->phy.ops.reset(hw);
 if (ret_val) {
  hw_dbg("Error resetting the PHY.\n");
  goto out;
 }

 ret_val = igc_get_phy_id(hw);
 if (ret_val)
  return ret_val;

 igc_check_for_copper_link(hw);


 switch (phy->id) {
 case 128:
  phy->type = igc_phy_i225;
  break;
 default:
  ret_val = -IGC_ERR_PHY;
  goto out;
 }

out:
 return ret_val;
}
