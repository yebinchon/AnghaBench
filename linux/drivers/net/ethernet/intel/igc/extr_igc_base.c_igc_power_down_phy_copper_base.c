
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_hw {int dummy; } ;


 scalar_t__ igc_check_reset_block (struct igc_hw*) ;
 scalar_t__ igc_enable_mng_pass_thru (struct igc_hw*) ;
 int igc_power_down_phy_copper (struct igc_hw*) ;

void igc_power_down_phy_copper_base(struct igc_hw *hw)
{

 if (!(igc_enable_mng_pass_thru(hw) || igc_check_reset_block(hw)))
  igc_power_down_phy_copper(hw);
}
