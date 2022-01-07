
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {scalar_t__ mac_type; int phy_type; } ;
typedef int s32 ;


 int CTRL ;
 int E1000_CTRL_FD ;
 int E1000_CTRL_FRCDPX ;
 int E1000_CTRL_FRCSPD ;
 int E1000_CTRL_ILOS ;
 int E1000_CTRL_SPD_10 ;
 int E1000_CTRL_SPD_100 ;
 int E1000_CTRL_SPD_1000 ;
 int E1000_CTRL_SPD_SEL ;
 int E1000_SUCCESS ;
 int M88E1000_PHY_SPEC_STATUS ;
 int M88E1000_PSSR_1000MBS ;
 int M88E1000_PSSR_100MBS ;
 int M88E1000_PSSR_DPLX ;
 int M88E1000_PSSR_SPEED ;
 int PHY_CTRL ;
 int RTL_PHY_CTRL_FD ;
 int RTL_PHY_CTRL_SPD_100 ;
 scalar_t__ e1000_82544 ;
 scalar_t__ e1000_ce4100 ;
 int e1000_config_collision_dist (struct e1000_hw*) ;

 int e1000_read_phy_reg (struct e1000_hw*,int ,int*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static s32 e1000_config_mac_to_phy(struct e1000_hw *hw)
{
 u32 ctrl;
 s32 ret_val;
 u16 phy_data;




 if ((hw->mac_type >= e1000_82544) && (hw->mac_type != e1000_ce4100))
  return E1000_SUCCESS;




 ctrl = er32(CTRL);
 ctrl |= (E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
 ctrl &= ~(E1000_CTRL_SPD_SEL | E1000_CTRL_ILOS);

 switch (hw->phy_type) {
 case 128:
  ret_val = e1000_read_phy_reg(hw, PHY_CTRL, &phy_data);
  if (ret_val)
   return ret_val;

  if (phy_data & RTL_PHY_CTRL_FD)
   ctrl |= E1000_CTRL_FD;
  else
   ctrl &= ~E1000_CTRL_FD;

  if (phy_data & RTL_PHY_CTRL_SPD_100)
   ctrl |= E1000_CTRL_SPD_100;
  else
   ctrl |= E1000_CTRL_SPD_10;

  e1000_config_collision_dist(hw);
  break;
 default:



  ret_val = e1000_read_phy_reg(hw, M88E1000_PHY_SPEC_STATUS,
          &phy_data);
  if (ret_val)
   return ret_val;

  if (phy_data & M88E1000_PSSR_DPLX)
   ctrl |= E1000_CTRL_FD;
  else
   ctrl &= ~E1000_CTRL_FD;

  e1000_config_collision_dist(hw);




  if ((phy_data & M88E1000_PSSR_SPEED) == M88E1000_PSSR_1000MBS)
   ctrl |= E1000_CTRL_SPD_1000;
  else if ((phy_data & M88E1000_PSSR_SPEED) ==
    M88E1000_PSSR_100MBS)
   ctrl |= E1000_CTRL_SPD_100;
 }


 ew32(CTRL, ctrl);
 return E1000_SUCCESS;
}
