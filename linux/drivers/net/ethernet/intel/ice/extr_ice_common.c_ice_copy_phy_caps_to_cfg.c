
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_aqc_set_phy_cfg_data {int link_fec_opt; int eeer_value; int eee_cap; int low_power_ctrl; int caps; int phy_type_high; int phy_type_low; } ;
struct ice_aqc_get_phy_caps_data {int link_fec_options; int eeer_value; int eee_cap; int low_power_ctrl; int caps; int phy_type_high; int phy_type_low; } ;



void
ice_copy_phy_caps_to_cfg(struct ice_aqc_get_phy_caps_data *caps,
    struct ice_aqc_set_phy_cfg_data *cfg)
{
 if (!caps || !cfg)
  return;

 cfg->phy_type_low = caps->phy_type_low;
 cfg->phy_type_high = caps->phy_type_high;
 cfg->caps = caps->caps;
 cfg->low_power_ctrl = caps->low_power_ctrl;
 cfg->eee_cap = caps->eee_cap;
 cfg->eeer_value = caps->eeer_value;
 cfg->link_fec_opt = caps->link_fec_options;
}
