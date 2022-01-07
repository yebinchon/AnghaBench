
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int req_mode; } ;
struct ice_port_info {int lport; TYPE_1__ fc; struct ice_hw* hw; } ;
struct ice_hw {int dummy; } ;
struct ice_aqc_set_phy_cfg_data {int caps; int link_fec_opt; int eeer_value; int eee_cap; int low_power_ctrl; int phy_type_low; int phy_type_high; int member_0; } ;
struct ice_aqc_get_phy_caps_data {int caps; int link_fec_options; int eeer_value; int eee_cap; int low_power_ctrl; int phy_type_low; int phy_type_high; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int GFP_KERNEL ;
 int ICE_AQC_PHY_EN_RX_LINK_PAUSE ;
 int ICE_AQC_PHY_EN_TX_LINK_PAUSE ;
 int ICE_AQC_REPORT_SW_CFG ;
 int ICE_AQ_PHY_ENA_AUTO_LINK_UPDT ;
 int ICE_ERR_NO_MEMORY ;
 int ICE_ERR_PARAM ;



 int ICE_SET_FC_AQ_FAIL_GET ;
 int ICE_SET_FC_AQ_FAIL_NONE ;
 int ICE_SET_FC_AQ_FAIL_SET ;
 int ICE_SET_FC_AQ_FAIL_UPDATE ;
 int devm_kfree (int ,struct ice_aqc_get_phy_caps_data*) ;
 struct ice_aqc_get_phy_caps_data* devm_kzalloc (int ,int,int ) ;
 int ice_aq_get_phy_caps (struct ice_port_info*,int,int ,struct ice_aqc_get_phy_caps_data*,int *) ;
 int ice_aq_set_phy_cfg (struct ice_hw*,int ,struct ice_aqc_set_phy_cfg_data*,int *) ;
 int ice_hw_to_dev (struct ice_hw*) ;
 int ice_update_link_info (struct ice_port_info*) ;
 int mdelay (int) ;

enum ice_status
ice_set_fc(struct ice_port_info *pi, u8 *aq_failures, bool ena_auto_link_update)
{
 struct ice_aqc_set_phy_cfg_data cfg = { 0 };
 struct ice_aqc_get_phy_caps_data *pcaps;
 enum ice_status status;
 u8 pause_mask = 0x0;
 struct ice_hw *hw;

 if (!pi)
  return ICE_ERR_PARAM;
 hw = pi->hw;
 *aq_failures = ICE_SET_FC_AQ_FAIL_NONE;

 switch (pi->fc.req_mode) {
 case 130:
  pause_mask |= ICE_AQC_PHY_EN_TX_LINK_PAUSE;
  pause_mask |= ICE_AQC_PHY_EN_RX_LINK_PAUSE;
  break;
 case 129:
  pause_mask |= ICE_AQC_PHY_EN_RX_LINK_PAUSE;
  break;
 case 128:
  pause_mask |= ICE_AQC_PHY_EN_TX_LINK_PAUSE;
  break;
 default:
  break;
 }

 pcaps = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*pcaps), GFP_KERNEL);
 if (!pcaps)
  return ICE_ERR_NO_MEMORY;


 status = ice_aq_get_phy_caps(pi, 0, ICE_AQC_REPORT_SW_CFG, pcaps,
         ((void*)0));
 if (status) {
  *aq_failures = ICE_SET_FC_AQ_FAIL_GET;
  goto out;
 }


 cfg.caps = pcaps->caps & ~(ICE_AQC_PHY_EN_TX_LINK_PAUSE |
       ICE_AQC_PHY_EN_RX_LINK_PAUSE);


 cfg.caps |= pause_mask;


 if (cfg.caps != pcaps->caps) {
  int retry_count, retry_max = 10;


  if (ena_auto_link_update)
   cfg.caps |= ICE_AQ_PHY_ENA_AUTO_LINK_UPDT;

  cfg.phy_type_high = pcaps->phy_type_high;
  cfg.phy_type_low = pcaps->phy_type_low;
  cfg.low_power_ctrl = pcaps->low_power_ctrl;
  cfg.eee_cap = pcaps->eee_cap;
  cfg.eeer_value = pcaps->eeer_value;
  cfg.link_fec_opt = pcaps->link_fec_options;

  status = ice_aq_set_phy_cfg(hw, pi->lport, &cfg, ((void*)0));
  if (status) {
   *aq_failures = ICE_SET_FC_AQ_FAIL_SET;
   goto out;
  }






  for (retry_count = 0; retry_count < retry_max; retry_count++) {
   status = ice_update_link_info(pi);

   if (!status)
    break;

   mdelay(100);
  }

  if (status)
   *aq_failures = ICE_SET_FC_AQ_FAIL_UPDATE;
 }

out:
 devm_kfree(ice_hw_to_dev(hw), pcaps);
 return status;
}
