
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ice_port_info {int is_sw_lldp; scalar_t__ dcbx_status; } ;
struct TYPE_6__ {scalar_t__ sq_last_status; } ;
struct TYPE_4__ {int dcb; } ;
struct TYPE_5__ {TYPE_1__ common_cap; } ;
struct ice_hw {TYPE_3__ adminq; TYPE_2__ func_caps; struct ice_port_info* port_info; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 scalar_t__ ICE_AQ_RC_EPERM ;
 scalar_t__ ICE_DCBX_STATUS_DIS ;
 scalar_t__ ICE_DCBX_STATUS_DONE ;
 scalar_t__ ICE_DCBX_STATUS_IN_PROGRESS ;
 scalar_t__ ICE_DCBX_STATUS_NOT_STARTED ;
 int ICE_ERR_NOT_READY ;
 int ICE_ERR_NOT_SUPPORTED ;
 int ice_aq_cfg_lldp_mib_change (struct ice_hw*,int,int *) ;
 int ice_get_dcb_cfg (struct ice_port_info*) ;
 scalar_t__ ice_get_dcbx_status (struct ice_hw*) ;

enum ice_status ice_init_dcb(struct ice_hw *hw, bool enable_mib_change)
{
 struct ice_port_info *pi = hw->port_info;
 enum ice_status ret = 0;

 if (!hw->func_caps.common_cap.dcb)
  return ICE_ERR_NOT_SUPPORTED;

 pi->is_sw_lldp = 1;


 pi->dcbx_status = ice_get_dcbx_status(hw);

 if (pi->dcbx_status == ICE_DCBX_STATUS_DONE ||
     pi->dcbx_status == ICE_DCBX_STATUS_IN_PROGRESS ||
     pi->dcbx_status == ICE_DCBX_STATUS_NOT_STARTED) {

  ret = ice_get_dcb_cfg(pi);
  pi->is_sw_lldp = (hw->adminq.sq_last_status == ICE_AQ_RC_EPERM);
  if (ret)
   return ret;
 } else if (pi->dcbx_status == ICE_DCBX_STATUS_DIS) {
  return ICE_ERR_NOT_READY;
 }


 if (enable_mib_change) {
  ret = ice_aq_cfg_lldp_mib_change(hw, 1, ((void*)0));
  if (!ret)
   pi->is_sw_lldp = 0;
 }

 return ret;
}
