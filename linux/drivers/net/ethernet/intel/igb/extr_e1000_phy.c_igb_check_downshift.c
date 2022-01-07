
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int (* read_reg ) (struct e1000_hw*,int,int*) ;} ;
struct e1000_phy_info {int type; int speed_downgraded; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef int s32 ;


 int IGP01E1000_PHY_LINK_HEALTH ;
 int IGP01E1000_PLHR_SS_DOWNGRADE ;
 int M88E1000_PHY_SPEC_STATUS ;
 int M88E1000_PSSR_DOWNSHIFT ;






 int stub1 (struct e1000_hw*,int,int*) ;

s32 igb_check_downshift(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 phy_data, offset, mask;

 switch (phy->type) {
 case 132:
 case 128:
 case 133:
  offset = M88E1000_PHY_SPEC_STATUS;
  mask = M88E1000_PSSR_DOWNSHIFT;
  break;
 case 130:
 case 131:
 case 129:
  offset = IGP01E1000_PHY_LINK_HEALTH;
  mask = IGP01E1000_PLHR_SS_DOWNGRADE;
  break;
 default:

  phy->speed_downgraded = 0;
  ret_val = 0;
  goto out;
 }

 ret_val = phy->ops.read_reg(hw, offset, &phy_data);

 if (!ret_val)
  phy->speed_downgraded = (phy_data & mask) ? 1 : 0;

out:
 return ret_val;
}
