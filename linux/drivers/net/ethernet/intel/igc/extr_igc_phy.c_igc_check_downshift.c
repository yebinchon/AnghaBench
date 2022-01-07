
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igc_phy_info {int type; int speed_downgraded; } ;
struct igc_hw {struct igc_phy_info phy; } ;
typedef int s32 ;




s32 igc_check_downshift(struct igc_hw *hw)
{
 struct igc_phy_info *phy = &hw->phy;
 s32 ret_val;

 switch (phy->type) {
 case 128:
 default:

  phy->speed_downgraded = 0;
  ret_val = 0;
 }

 return ret_val;
}
