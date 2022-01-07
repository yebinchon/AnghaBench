
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ice_port_info {scalar_t__ dcbx_status; int is_sw_lldp; } ;
struct TYPE_3__ {int dcb; } ;
struct TYPE_4__ {TYPE_1__ common_cap; } ;
struct ice_hw {TYPE_2__ func_caps; struct ice_port_info* port_info; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 scalar_t__ ICE_DCBX_STATUS_DIS ;
 int ICE_ERR_NOT_READY ;
 int ICE_ERR_NOT_SUPPORTED ;
 int ice_aq_cfg_lldp_mib_change (struct ice_hw*,int,int *) ;
 scalar_t__ ice_get_dcbx_status (struct ice_hw*) ;

enum ice_status ice_cfg_lldp_mib_change(struct ice_hw *hw, bool ena_mib)
{
 struct ice_port_info *pi = hw->port_info;
 enum ice_status ret;

 if (!hw->func_caps.common_cap.dcb)
  return ICE_ERR_NOT_SUPPORTED;


 pi->dcbx_status = ice_get_dcbx_status(hw);

 if (pi->dcbx_status == ICE_DCBX_STATUS_DIS)
  return ICE_ERR_NOT_READY;

 ret = ice_aq_cfg_lldp_mib_change(hw, ena_mib, ((void*)0));
 if (!ret)
  pi->is_sw_lldp = !ena_mib;

 return ret;
}
