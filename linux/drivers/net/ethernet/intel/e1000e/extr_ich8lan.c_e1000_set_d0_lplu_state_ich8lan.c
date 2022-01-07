
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct e1000_phy_info {scalar_t__ type; scalar_t__ smart_speed; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 int E1000_PHY_CTRL_D0A_LPLU ;
 int IGP01E1000_PHY_PORT_CONFIG ;
 int IGP01E1000_PSCFR_SMART_SPEED ;
 int PHY_CTRL ;
 scalar_t__ e1000_ich8lan ;
 scalar_t__ e1000_phy_ife ;
 scalar_t__ e1000_phy_igp_3 ;
 scalar_t__ e1000_smart_speed_off ;
 scalar_t__ e1000_smart_speed_on ;
 int e1000e_gig_downshift_workaround_ich8lan (struct e1000_hw*) ;
 scalar_t__ e1e_rphy (struct e1000_hw*,int ,int *) ;
 scalar_t__ e1e_wphy (struct e1000_hw*,int ,int ) ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;

__attribute__((used)) static s32 e1000_set_d0_lplu_state_ich8lan(struct e1000_hw *hw, bool active)
{
 struct e1000_phy_info *phy = &hw->phy;
 u32 phy_ctrl;
 s32 ret_val = 0;
 u16 data;

 if (phy->type == e1000_phy_ife)
  return 0;

 phy_ctrl = er32(PHY_CTRL);

 if (active) {
  phy_ctrl |= E1000_PHY_CTRL_D0A_LPLU;
  ew32(PHY_CTRL, phy_ctrl);

  if (phy->type != e1000_phy_igp_3)
   return 0;




  if (hw->mac.type == e1000_ich8lan)
   e1000e_gig_downshift_workaround_ich8lan(hw);


  ret_val = e1e_rphy(hw, IGP01E1000_PHY_PORT_CONFIG, &data);
  if (ret_val)
   return ret_val;
  data &= ~IGP01E1000_PSCFR_SMART_SPEED;
  ret_val = e1e_wphy(hw, IGP01E1000_PHY_PORT_CONFIG, data);
  if (ret_val)
   return ret_val;
 } else {
  phy_ctrl &= ~E1000_PHY_CTRL_D0A_LPLU;
  ew32(PHY_CTRL, phy_ctrl);

  if (phy->type != e1000_phy_igp_3)
   return 0;






  if (phy->smart_speed == e1000_smart_speed_on) {
   ret_val = e1e_rphy(hw, IGP01E1000_PHY_PORT_CONFIG,
        &data);
   if (ret_val)
    return ret_val;

   data |= IGP01E1000_PSCFR_SMART_SPEED;
   ret_val = e1e_wphy(hw, IGP01E1000_PHY_PORT_CONFIG,
        data);
   if (ret_val)
    return ret_val;
  } else if (phy->smart_speed == e1000_smart_speed_off) {
   ret_val = e1e_rphy(hw, IGP01E1000_PHY_PORT_CONFIG,
        &data);
   if (ret_val)
    return ret_val;

   data &= ~IGP01E1000_PSCFR_SMART_SPEED;
   ret_val = e1e_wphy(hw, IGP01E1000_PHY_PORT_CONFIG,
        data);
   if (ret_val)
    return ret_val;
  }
 }

 return 0;
}
