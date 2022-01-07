
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_mac_info {int get_link_status; int autoneg; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;
typedef int s32 ;


 int E1000_ERR_CONFIG ;
 int hw_dbg (char*) ;
 int igb_check_downshift (struct e1000_hw*) ;
 int igb_config_collision_dist (struct e1000_hw*) ;
 int igb_config_fc_after_link_up (struct e1000_hw*) ;
 int igb_phy_has_link (struct e1000_hw*,int,int ,int*) ;

s32 igb_check_for_copper_link(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 s32 ret_val;
 bool link;






 if (!mac->get_link_status) {
  ret_val = 0;
  goto out;
 }





 ret_val = igb_phy_has_link(hw, 1, 0, &link);
 if (ret_val)
  goto out;

 if (!link)
  goto out;

 mac->get_link_status = 0;




 igb_check_downshift(hw);




 if (!mac->autoneg) {
  ret_val = -E1000_ERR_CONFIG;
  goto out;
 }





 igb_config_collision_dist(hw);






 ret_val = igb_config_fc_after_link_up(hw);
 if (ret_val)
  hw_dbg("Error configuring flow control\n");

out:
 return ret_val;
}
