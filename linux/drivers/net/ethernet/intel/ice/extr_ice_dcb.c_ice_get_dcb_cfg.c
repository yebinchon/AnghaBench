
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ice_dcbx_cfg {void* dcbx_mode; int tlv_status; } ;
struct ice_port_info {struct ice_dcbx_cfg local_dcbx_cfg; TYPE_2__* hw; } ;
struct ice_aqc_get_cee_dcb_cfg_resp {int tlv_status; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_3__ {scalar_t__ sq_last_status; } ;
struct TYPE_4__ {TYPE_1__ adminq; } ;


 scalar_t__ ICE_AQ_RC_ENOENT ;
 void* ICE_DCBX_MODE_CEE ;
 void* ICE_DCBX_MODE_IEEE ;
 int ICE_ERR_PARAM ;
 int ice_aq_get_cee_dcb_cfg (TYPE_2__*,struct ice_aqc_get_cee_dcb_cfg_resp*,int *) ;
 int ice_cee_to_dcb_cfg (struct ice_aqc_get_cee_dcb_cfg_resp*,struct ice_dcbx_cfg*) ;
 int ice_get_ieee_or_cee_dcb_cfg (struct ice_port_info*,void*) ;
 int le32_to_cpu (int ) ;

enum ice_status ice_get_dcb_cfg(struct ice_port_info *pi)
{
 struct ice_aqc_get_cee_dcb_cfg_resp cee_cfg;
 struct ice_dcbx_cfg *dcbx_cfg;
 enum ice_status ret;

 if (!pi)
  return ICE_ERR_PARAM;

 ret = ice_aq_get_cee_dcb_cfg(pi->hw, &cee_cfg, ((void*)0));
 if (!ret) {

  dcbx_cfg = &pi->local_dcbx_cfg;
  dcbx_cfg->dcbx_mode = ICE_DCBX_MODE_CEE;
  dcbx_cfg->tlv_status = le32_to_cpu(cee_cfg.tlv_status);
  ice_cee_to_dcb_cfg(&cee_cfg, dcbx_cfg);
  ret = ice_get_ieee_or_cee_dcb_cfg(pi, ICE_DCBX_MODE_CEE);
 } else if (pi->hw->adminq.sq_last_status == ICE_AQ_RC_ENOENT) {

  dcbx_cfg = &pi->local_dcbx_cfg;
  dcbx_cfg->dcbx_mode = ICE_DCBX_MODE_IEEE;
  ret = ice_get_ieee_or_cee_dcb_cfg(pi, ICE_DCBX_MODE_IEEE);
 }

 return ret;
}
