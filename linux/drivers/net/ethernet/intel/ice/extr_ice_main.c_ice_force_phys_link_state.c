
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ice_vsi {scalar_t__ type; int vsi_num; TYPE_4__* back; struct ice_port_info* port_info; } ;
struct TYPE_6__ {int link_info; } ;
struct TYPE_7__ {TYPE_2__ link_info; } ;
struct ice_port_info {int lport; TYPE_3__ phy; } ;
struct ice_aqc_set_phy_cfg_data {int caps; int link_fec_options; int link_fec_opt; int eeer_value; int eee_cap; int low_power_ctrl; int phy_type_high; int phy_type_low; } ;
struct ice_aqc_get_phy_caps_data {int caps; int link_fec_options; int link_fec_opt; int eeer_value; int eee_cap; int low_power_ctrl; int phy_type_high; int phy_type_low; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int hw; TYPE_1__* pdev; } ;
struct TYPE_5__ {struct device dev; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int ICE_AQC_PHY_EN_LINK ;
 int ICE_AQC_REPORT_SW_CFG ;
 int ICE_AQ_LINK_UP ;
 int ICE_AQ_PHY_ENA_AUTO_LINK_UPDT ;
 int ICE_AQ_PHY_ENA_LINK ;
 scalar_t__ ICE_VSI_PF ;
 int dev_err (struct device*,char*,int ,int) ;
 int devm_kfree (struct device*,struct ice_aqc_set_phy_cfg_data*) ;
 struct ice_aqc_set_phy_cfg_data* devm_kzalloc (struct device*,int,int ) ;
 int ice_aq_get_phy_caps (struct ice_port_info*,int,int ,struct ice_aqc_set_phy_cfg_data*,int *) ;
 int ice_aq_set_phy_cfg (int *,int ,struct ice_aqc_set_phy_cfg_data*,int *) ;

__attribute__((used)) static int ice_force_phys_link_state(struct ice_vsi *vsi, bool link_up)
{
 struct ice_aqc_get_phy_caps_data *pcaps;
 struct ice_aqc_set_phy_cfg_data *cfg;
 struct ice_port_info *pi;
 struct device *dev;
 int retcode;

 if (!vsi || !vsi->port_info || !vsi->back)
  return -EINVAL;
 if (vsi->type != ICE_VSI_PF)
  return 0;

 dev = &vsi->back->pdev->dev;

 pi = vsi->port_info;

 pcaps = devm_kzalloc(dev, sizeof(*pcaps), GFP_KERNEL);
 if (!pcaps)
  return -ENOMEM;

 retcode = ice_aq_get_phy_caps(pi, 0, ICE_AQC_REPORT_SW_CFG, pcaps,
          ((void*)0));
 if (retcode) {
  dev_err(dev,
   "Failed to get phy capabilities, VSI %d error %d\n",
   vsi->vsi_num, retcode);
  retcode = -EIO;
  goto out;
 }


 if (link_up == !!(pcaps->caps & ICE_AQC_PHY_EN_LINK) &&
     link_up == !!(pi->phy.link_info.link_info & ICE_AQ_LINK_UP))
  goto out;

 cfg = devm_kzalloc(dev, sizeof(*cfg), GFP_KERNEL);
 if (!cfg) {
  retcode = -ENOMEM;
  goto out;
 }

 cfg->phy_type_low = pcaps->phy_type_low;
 cfg->phy_type_high = pcaps->phy_type_high;
 cfg->caps = pcaps->caps | ICE_AQ_PHY_ENA_AUTO_LINK_UPDT;
 cfg->low_power_ctrl = pcaps->low_power_ctrl;
 cfg->eee_cap = pcaps->eee_cap;
 cfg->eeer_value = pcaps->eeer_value;
 cfg->link_fec_opt = pcaps->link_fec_options;
 if (link_up)
  cfg->caps |= ICE_AQ_PHY_ENA_LINK;
 else
  cfg->caps &= ~ICE_AQ_PHY_ENA_LINK;

 retcode = ice_aq_set_phy_cfg(&vsi->back->hw, pi->lport, cfg, ((void*)0));
 if (retcode) {
  dev_err(dev, "Failed to set phy config, VSI %d error %d\n",
   vsi->vsi_num, retcode);
  retcode = -EIO;
 }

 devm_kfree(dev, cfg);
out:
 devm_kfree(dev, pcaps);
 return retcode;
}
