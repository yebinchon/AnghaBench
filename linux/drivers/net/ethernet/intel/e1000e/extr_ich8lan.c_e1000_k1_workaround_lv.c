
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef scalar_t__ s32 ;


 int E1000_FEXTNVM4_BEACON_DURATION_16USEC ;
 int E1000_FEXTNVM4_BEACON_DURATION_MASK ;
 int FEXTNVM4 ;
 int HV_M_STATUS ;
 int HV_M_STATUS_AUTONEG_COMPLETE ;
 int HV_M_STATUS_LINK_UP ;
 int HV_M_STATUS_SPEED_100 ;
 int HV_M_STATUS_SPEED_1000 ;
 int HV_PM_CTRL ;
 int HV_PM_CTRL_K1_ENABLE ;
 scalar_t__ e1000_pch2lan ;
 scalar_t__ e1e_rphy (struct e1000_hw*,int ,int*) ;
 scalar_t__ e1e_wphy (struct e1000_hw*,int ,int) ;
 int er32 (int ) ;
 int ew32 (int ,int ) ;

__attribute__((used)) static s32 e1000_k1_workaround_lv(struct e1000_hw *hw)
{
 s32 ret_val = 0;
 u16 status_reg = 0;

 if (hw->mac.type != e1000_pch2lan)
  return 0;


 ret_val = e1e_rphy(hw, HV_M_STATUS, &status_reg);
 if (ret_val)
  return ret_val;

 if ((status_reg & (HV_M_STATUS_LINK_UP | HV_M_STATUS_AUTONEG_COMPLETE))
     == (HV_M_STATUS_LINK_UP | HV_M_STATUS_AUTONEG_COMPLETE)) {
  if (status_reg &
      (HV_M_STATUS_SPEED_1000 | HV_M_STATUS_SPEED_100)) {
   u16 pm_phy_reg;


   ret_val = e1e_rphy(hw, HV_PM_CTRL, &pm_phy_reg);
   if (ret_val)
    return ret_val;
   pm_phy_reg &= ~HV_PM_CTRL_K1_ENABLE;
   ret_val = e1e_wphy(hw, HV_PM_CTRL, pm_phy_reg);
   if (ret_val)
    return ret_val;
  } else {
   u32 mac_reg;

   mac_reg = er32(FEXTNVM4);
   mac_reg &= ~E1000_FEXTNVM4_BEACON_DURATION_MASK;
   mac_reg |= E1000_FEXTNVM4_BEACON_DURATION_16USEC;
   ew32(FEXTNVM4, mac_reg);
  }
 }

 return ret_val;
}
