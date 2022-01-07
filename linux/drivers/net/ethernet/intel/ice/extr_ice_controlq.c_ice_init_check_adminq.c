
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_ctl_q_info {int dummy; } ;
struct ice_hw {struct ice_ctl_q_info adminq; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_ERR_FW_API_VER ;
 int ice_aq_get_fw_ver (struct ice_hw*,int *) ;
 int ice_aq_ver_check (struct ice_hw*) ;
 int ice_shutdown_rq (struct ice_hw*,struct ice_ctl_q_info*) ;
 int ice_shutdown_sq (struct ice_hw*,struct ice_ctl_q_info*) ;

__attribute__((used)) static enum ice_status ice_init_check_adminq(struct ice_hw *hw)
{
 struct ice_ctl_q_info *cq = &hw->adminq;
 enum ice_status status;

 status = ice_aq_get_fw_ver(hw, ((void*)0));
 if (status)
  goto init_ctrlq_free_rq;

 if (!ice_aq_ver_check(hw)) {
  status = ICE_ERR_FW_API_VER;
  goto init_ctrlq_free_rq;
 }

 return 0;

init_ctrlq_free_rq:
 ice_shutdown_rq(hw, cq);
 ice_shutdown_sq(hw, cq);
 return status;
}
