
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_mac_info {int get_link_status; int autoneg; } ;
struct igc_hw {struct igc_mac_info mac; } ;
typedef int s32 ;


 int IGC_ERR_CONFIG ;
 int hw_dbg (char*) ;
 int igc_check_downshift (struct igc_hw*) ;
 int igc_config_collision_dist (struct igc_hw*) ;
 int igc_config_fc_after_link_up (struct igc_hw*) ;
 int igc_phy_has_link (struct igc_hw*,int,int ,int*) ;

s32 igc_check_for_copper_link(struct igc_hw *hw)
{
 struct igc_mac_info *mac = &hw->mac;
 s32 ret_val;
 bool link;






 if (!mac->get_link_status) {
  ret_val = 0;
  goto out;
 }





 ret_val = igc_phy_has_link(hw, 1, 0, &link);
 if (ret_val)
  goto out;

 if (!link)
  goto out;

 mac->get_link_status = 0;




 igc_check_downshift(hw);




 if (!mac->autoneg) {
  ret_val = -IGC_ERR_CONFIG;
  goto out;
 }





 igc_config_collision_dist(hw);






 ret_val = igc_config_fc_after_link_up(hw);
 if (ret_val)
  hw_dbg("Error configuring flow control\n");

out:
 return ret_val;
}
