
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ice_sq_cd {int dummy; } ;
struct ice_hw {int adminq; } ;
struct ice_aqc_req_res {int res_id; } ;
struct TYPE_2__ {struct ice_aqc_req_res res_owner; } ;
struct ice_aq_desc {int opcode; TYPE_1__ params; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_AQC_RES_ID_GLBL_LOCK ;




 int ice_global_cfg_lock_sw ;
 int ice_sq_send_cmd (struct ice_hw*,int *,struct ice_aq_desc*,void*,int ,struct ice_sq_cd*) ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

enum ice_status
ice_aq_send_cmd(struct ice_hw *hw, struct ice_aq_desc *desc, void *buf,
  u16 buf_size, struct ice_sq_cd *cd)
{
 struct ice_aqc_req_res *cmd = &desc->params.res_owner;
 bool lock_acquired = 0;
 enum ice_status status;
 switch (le16_to_cpu(desc->opcode)) {
 case 131:
 case 130:
 case 129:
  break;
 case 128:
  if (le16_to_cpu(cmd->res_id) == ICE_AQC_RES_ID_GLBL_LOCK)
   break;

 default:
  mutex_lock(&ice_global_cfg_lock_sw);
  lock_acquired = 1;
  break;
 }

 status = ice_sq_send_cmd(hw, &hw->adminq, desc, buf, buf_size, cd);
 if (lock_acquired)
  mutex_unlock(&ice_global_cfg_lock_sw);

 return status;
}
