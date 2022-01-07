
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ (* force_speed_duplex ) (struct igc_hw*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ autoneg; } ;
struct igc_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int COPPER_LINK_UP_LIMIT ;
 int hw_dbg (char*) ;
 int igc_config_collision_dist (struct igc_hw*) ;
 scalar_t__ igc_config_fc_after_link_up (struct igc_hw*) ;
 scalar_t__ igc_copper_link_autoneg (struct igc_hw*) ;
 scalar_t__ igc_phy_has_link (struct igc_hw*,int ,int,int*) ;
 scalar_t__ stub1 (struct igc_hw*) ;

s32 igc_setup_copper_link(struct igc_hw *hw)
{
 s32 ret_val = 0;
 bool link;

 if (hw->mac.autoneg) {



  ret_val = igc_copper_link_autoneg(hw);
  if (ret_val)
   goto out;
 } else {



  hw_dbg("Forcing Speed and Duplex\n");
  ret_val = hw->phy.ops.force_speed_duplex(hw);
  if (ret_val) {
   hw_dbg("Error Forcing Speed and Duplex\n");
   goto out;
  }
 }




 ret_val = igc_phy_has_link(hw, COPPER_LINK_UP_LIMIT, 10, &link);
 if (ret_val)
  goto out;

 if (link) {
  hw_dbg("Valid link established!!!\n");
  igc_config_collision_dist(hw);
  ret_val = igc_config_fc_after_link_up(hw);
 } else {
  hw_dbg("Unable to establish link!!!\n");
 }

out:
 return ret_val;
}
