
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct ice_dcbx_cfg {int dummy; } ;
struct ice_port_info {TYPE_2__* hw; struct ice_dcbx_cfg remote_dcbx_cfg; struct ice_dcbx_cfg desired_dcbx_cfg; struct ice_dcbx_cfg local_dcbx_cfg; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_3__ {scalar_t__ sq_last_status; } ;
struct TYPE_4__ {TYPE_1__ adminq; } ;


 int ICE_AQ_LLDP_BRID_TYPE_NEAREST_BRID ;
 int ICE_AQ_LLDP_MIB_LOCAL ;
 int ICE_AQ_LLDP_MIB_REMOTE ;
 scalar_t__ ICE_AQ_RC_ENOENT ;
 scalar_t__ ICE_DCBX_MODE_CEE ;
 scalar_t__ ICE_DCBX_MODE_IEEE ;
 int ICE_ERR_PARAM ;
 int ice_aq_get_dcb_cfg (TYPE_2__*,int ,int ,struct ice_dcbx_cfg*) ;

__attribute__((used)) static enum ice_status
ice_get_ieee_or_cee_dcb_cfg(struct ice_port_info *pi, u8 dcbx_mode)
{
 struct ice_dcbx_cfg *dcbx_cfg = ((void*)0);
 enum ice_status ret;

 if (!pi)
  return ICE_ERR_PARAM;

 if (dcbx_mode == ICE_DCBX_MODE_IEEE)
  dcbx_cfg = &pi->local_dcbx_cfg;
 else if (dcbx_mode == ICE_DCBX_MODE_CEE)
  dcbx_cfg = &pi->desired_dcbx_cfg;




 ret = ice_aq_get_dcb_cfg(pi->hw, ICE_AQ_LLDP_MIB_LOCAL,
     ICE_AQ_LLDP_BRID_TYPE_NEAREST_BRID, dcbx_cfg);
 if (ret)
  goto out;


 dcbx_cfg = &pi->remote_dcbx_cfg;
 ret = ice_aq_get_dcb_cfg(pi->hw, ICE_AQ_LLDP_MIB_REMOTE,
     ICE_AQ_LLDP_BRID_TYPE_NEAREST_BRID, dcbx_cfg);

 if (pi->hw->adminq.sq_last_status == ICE_AQ_RC_ENOENT)
  ret = 0;

out:
 return ret;
}
