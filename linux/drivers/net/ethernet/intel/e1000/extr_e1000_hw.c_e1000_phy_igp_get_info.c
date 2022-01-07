
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct e1000_phy_info {int cable_length; void* remote_rx; void* local_rx; scalar_t__ mdix_mode; int cable_polarity; int polarity_correction; int extended_10bt_distance; scalar_t__ downshift; } ;
struct e1000_hw {scalar_t__ speed_downgraded; } ;
typedef scalar_t__ s32 ;
typedef int e1000_rev_polarity ;
typedef scalar_t__ e1000_downshift ;
typedef scalar_t__ e1000_auto_x_mode ;


 scalar_t__ E1000_SUCCESS ;
 int IGP01E1000_PHY_PORT_STATUS ;
 int IGP01E1000_PSSR_MDIX ;
 int IGP01E1000_PSSR_MDIX_SHIFT ;
 int IGP01E1000_PSSR_SPEED_1000MBPS ;
 int IGP01E1000_PSSR_SPEED_MASK ;
 int PHY_1000T_STATUS ;
 int SR_1000T_LOCAL_RX_STATUS ;
 int SR_1000T_LOCAL_RX_STATUS_SHIFT ;
 int SR_1000T_REMOTE_RX_STATUS ;
 int SR_1000T_REMOTE_RX_STATUS_SHIFT ;
 void* e1000_1000t_rx_status_not_ok ;
 void* e1000_1000t_rx_status_ok ;
 int e1000_10bt_ext_dist_enable_normal ;
 int e1000_cable_length_110_140 ;
 int e1000_cable_length_140 ;
 int e1000_cable_length_50 ;
 int e1000_cable_length_50_80 ;
 int e1000_cable_length_80_110 ;
 scalar_t__ e1000_check_polarity (struct e1000_hw*,int *) ;
 scalar_t__ e1000_get_cable_length (struct e1000_hw*,int*,int*) ;
 int e1000_igp_cable_length_110 ;
 int e1000_igp_cable_length_140 ;
 int e1000_igp_cable_length_50 ;
 int e1000_igp_cable_length_80 ;
 int e1000_polarity_reversal_enabled ;
 scalar_t__ e1000_read_phy_reg (struct e1000_hw*,int ,int*) ;

__attribute__((used)) static s32 e1000_phy_igp_get_info(struct e1000_hw *hw,
      struct e1000_phy_info *phy_info)
{
 s32 ret_val;
 u16 phy_data, min_length, max_length, average;
 e1000_rev_polarity polarity;




 phy_info->downshift = (e1000_downshift) hw->speed_downgraded;


 phy_info->extended_10bt_distance = e1000_10bt_ext_dist_enable_normal;


 phy_info->polarity_correction = e1000_polarity_reversal_enabled;


 ret_val = e1000_check_polarity(hw, &polarity);
 if (ret_val)
  return ret_val;

 phy_info->cable_polarity = polarity;

 ret_val = e1000_read_phy_reg(hw, IGP01E1000_PHY_PORT_STATUS, &phy_data);
 if (ret_val)
  return ret_val;

 phy_info->mdix_mode =
     (e1000_auto_x_mode) ((phy_data & IGP01E1000_PSSR_MDIX) >>
     IGP01E1000_PSSR_MDIX_SHIFT);

 if ((phy_data & IGP01E1000_PSSR_SPEED_MASK) ==
     IGP01E1000_PSSR_SPEED_1000MBPS) {



  ret_val = e1000_read_phy_reg(hw, PHY_1000T_STATUS, &phy_data);
  if (ret_val)
   return ret_val;

  phy_info->local_rx = ((phy_data & SR_1000T_LOCAL_RX_STATUS) >>
          SR_1000T_LOCAL_RX_STATUS_SHIFT) ?
      e1000_1000t_rx_status_ok : e1000_1000t_rx_status_not_ok;
  phy_info->remote_rx = ((phy_data & SR_1000T_REMOTE_RX_STATUS) >>
           SR_1000T_REMOTE_RX_STATUS_SHIFT) ?
      e1000_1000t_rx_status_ok : e1000_1000t_rx_status_not_ok;


  ret_val = e1000_get_cable_length(hw, &min_length, &max_length);
  if (ret_val)
   return ret_val;


  average = (max_length + min_length) / 2;

  if (average <= e1000_igp_cable_length_50)
   phy_info->cable_length = e1000_cable_length_50;
  else if (average <= e1000_igp_cable_length_80)
   phy_info->cable_length = e1000_cable_length_50_80;
  else if (average <= e1000_igp_cable_length_110)
   phy_info->cable_length = e1000_cable_length_80_110;
  else if (average <= e1000_igp_cable_length_140)
   phy_info->cable_length = e1000_cable_length_110_140;
  else
   phy_info->cable_length = e1000_cable_length_140;
 }

 return E1000_SUCCESS;
}
