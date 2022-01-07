
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;


 scalar_t__ igb_check_reset_block (struct e1000_hw*) ;
 scalar_t__ igb_enable_mng_pass_thru (struct e1000_hw*) ;
 int igb_power_down_phy_copper (struct e1000_hw*) ;

void igb_power_down_phy_copper_82575(struct e1000_hw *hw)
{

 if (!(igb_enable_mng_pass_thru(hw) || igb_check_reset_block(hw)))
  igb_power_down_phy_copper(hw);
}
