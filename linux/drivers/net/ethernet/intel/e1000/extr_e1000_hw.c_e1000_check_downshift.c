
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_hw {scalar_t__ phy_type; int speed_downgraded; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_SUCCESS ;
 int IGP01E1000_PHY_LINK_HEALTH ;
 int IGP01E1000_PLHR_SS_DOWNGRADE ;
 int M88E1000_PHY_SPEC_STATUS ;
 int M88E1000_PSSR_DOWNSHIFT ;
 int M88E1000_PSSR_DOWNSHIFT_SHIFT ;
 scalar_t__ e1000_phy_igp ;
 scalar_t__ e1000_phy_m88 ;
 scalar_t__ e1000_read_phy_reg (struct e1000_hw*,int ,int*) ;

__attribute__((used)) static s32 e1000_check_downshift(struct e1000_hw *hw)
{
 s32 ret_val;
 u16 phy_data;

 if (hw->phy_type == e1000_phy_igp) {
  ret_val = e1000_read_phy_reg(hw, IGP01E1000_PHY_LINK_HEALTH,
          &phy_data);
  if (ret_val)
   return ret_val;

  hw->speed_downgraded =
      (phy_data & IGP01E1000_PLHR_SS_DOWNGRADE) ? 1 : 0;
 } else if (hw->phy_type == e1000_phy_m88) {
  ret_val = e1000_read_phy_reg(hw, M88E1000_PHY_SPEC_STATUS,
          &phy_data);
  if (ret_val)
   return ret_val;

  hw->speed_downgraded = (phy_data & M88E1000_PSSR_DOWNSHIFT) >>
      M88E1000_PSSR_DOWNSHIFT_SHIFT;
 }

 return E1000_SUCCESS;
}
