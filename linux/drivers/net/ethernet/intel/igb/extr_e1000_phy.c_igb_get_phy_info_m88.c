
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int (* read_reg ) (struct e1000_hw*,int ,int*) ;int (* get_cable_length ) (struct e1000_hw*) ;} ;
struct e1000_phy_info {scalar_t__ media_type; int polarity_correction; int is_mdix; void* remote_rx; void* local_rx; int cable_length; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef int s32 ;


 int E1000_CABLE_LENGTH_UNDEFINED ;
 int E1000_ERR_CONFIG ;
 int M88E1000_PHY_SPEC_CTRL ;
 int M88E1000_PHY_SPEC_STATUS ;
 int M88E1000_PSCR_POLARITY_REVERSAL ;
 int M88E1000_PSSR_1000MBS ;
 int M88E1000_PSSR_MDIX ;
 int M88E1000_PSSR_SPEED ;
 int PHY_1000T_STATUS ;
 int SR_1000T_LOCAL_RX_STATUS ;
 int SR_1000T_REMOTE_RX_STATUS ;
 void* e1000_1000t_rx_status_not_ok ;
 void* e1000_1000t_rx_status_ok ;
 void* e1000_1000t_rx_status_undefined ;
 scalar_t__ e1000_media_type_copper ;
 int hw_dbg (char*) ;
 int igb_check_polarity_m88 (struct e1000_hw*) ;
 int igb_phy_has_link (struct e1000_hw*,int,int ,int*) ;
 int stub1 (struct e1000_hw*,int ,int*) ;
 int stub2 (struct e1000_hw*,int ,int*) ;
 int stub3 (struct e1000_hw*) ;
 int stub4 (struct e1000_hw*,int ,int*) ;

s32 igb_get_phy_info_m88(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 phy_data;
 bool link;

 if (phy->media_type != e1000_media_type_copper) {
  hw_dbg("Phy info is only valid for copper media\n");
  ret_val = -E1000_ERR_CONFIG;
  goto out;
 }

 ret_val = igb_phy_has_link(hw, 1, 0, &link);
 if (ret_val)
  goto out;

 if (!link) {
  hw_dbg("Phy info is only valid if link is up\n");
  ret_val = -E1000_ERR_CONFIG;
  goto out;
 }

 ret_val = phy->ops.read_reg(hw, M88E1000_PHY_SPEC_CTRL, &phy_data);
 if (ret_val)
  goto out;

 phy->polarity_correction = (phy_data & M88E1000_PSCR_POLARITY_REVERSAL)
       ? 1 : 0;

 ret_val = igb_check_polarity_m88(hw);
 if (ret_val)
  goto out;

 ret_val = phy->ops.read_reg(hw, M88E1000_PHY_SPEC_STATUS, &phy_data);
 if (ret_val)
  goto out;

 phy->is_mdix = (phy_data & M88E1000_PSSR_MDIX) ? 1 : 0;

 if ((phy_data & M88E1000_PSSR_SPEED) == M88E1000_PSSR_1000MBS) {
  ret_val = phy->ops.get_cable_length(hw);
  if (ret_val)
   goto out;

  ret_val = phy->ops.read_reg(hw, PHY_1000T_STATUS, &phy_data);
  if (ret_val)
   goto out;

  phy->local_rx = (phy_data & SR_1000T_LOCAL_RX_STATUS)
    ? e1000_1000t_rx_status_ok
    : e1000_1000t_rx_status_not_ok;

  phy->remote_rx = (phy_data & SR_1000T_REMOTE_RX_STATUS)
     ? e1000_1000t_rx_status_ok
     : e1000_1000t_rx_status_not_ok;
 } else {

  phy->cable_length = E1000_CABLE_LENGTH_UNDEFINED;
  phy->local_rx = e1000_1000t_rx_status_undefined;
  phy->remote_rx = e1000_1000t_rx_status_undefined;
 }

out:
 return ret_val;
}
