
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_aqc_set_phy_cfg_data {int link_fec_opt; int caps; } ;
typedef enum ice_fec_mode { ____Placeholder_ice_fec_mode } ice_fec_mode ;


 int ICE_AQC_PHY_CAPS_MASK ;
 int ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN ;
 int ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ ;
 int ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN ;
 int ICE_AQC_PHY_FEC_25G_KR_REQ ;
 int ICE_AQC_PHY_FEC_25G_RS_528_REQ ;
 int ICE_AQC_PHY_FEC_25G_RS_544_REQ ;
 int ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN ;
 int ICE_AQC_PHY_FEC_MASK ;





void
ice_cfg_phy_fec(struct ice_aqc_set_phy_cfg_data *cfg, enum ice_fec_mode fec)
{
 switch (fec) {
 case 130:



  cfg->link_fec_opt &= ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN |
         ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN;
  cfg->link_fec_opt |= ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ |
         ICE_AQC_PHY_FEC_25G_KR_REQ;
  break;
 case 128:



  cfg->link_fec_opt &= ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN;
  cfg->link_fec_opt |= ICE_AQC_PHY_FEC_25G_RS_528_REQ |
         ICE_AQC_PHY_FEC_25G_RS_544_REQ;
  break;
 case 129:

  cfg->link_fec_opt &= ~ICE_AQC_PHY_FEC_MASK;
  break;
 case 131:

  cfg->caps &= ICE_AQC_PHY_CAPS_MASK;
  break;
 }
}
