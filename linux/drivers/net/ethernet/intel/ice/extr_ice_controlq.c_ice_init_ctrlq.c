
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_ctl_q_info {int qtype; int sq_cmd_timeout; int sq_buf_size; int rq_buf_size; int num_sq_entries; int num_rq_entries; } ;
struct ice_hw {struct ice_ctl_q_info mailboxq; struct ice_ctl_q_info adminq; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef enum ice_ctl_q { ____Placeholder_ice_ctl_q } ice_ctl_q ;




 int ICE_CTL_Q_SQ_CMD_TIMEOUT ;
 int ICE_ERR_CFG ;
 int ICE_ERR_PARAM ;
 int ice_adminq_init_regs (struct ice_hw*) ;
 int ice_init_rq (struct ice_hw*,struct ice_ctl_q_info*) ;
 int ice_init_sq (struct ice_hw*,struct ice_ctl_q_info*) ;
 int ice_mailbox_init_regs (struct ice_hw*) ;
 int ice_shutdown_sq (struct ice_hw*,struct ice_ctl_q_info*) ;

__attribute__((used)) static enum ice_status ice_init_ctrlq(struct ice_hw *hw, enum ice_ctl_q q_type)
{
 struct ice_ctl_q_info *cq;
 enum ice_status ret_code;

 switch (q_type) {
 case 129:
  ice_adminq_init_regs(hw);
  cq = &hw->adminq;
  break;
 case 128:
  ice_mailbox_init_regs(hw);
  cq = &hw->mailboxq;
  break;
 default:
  return ICE_ERR_PARAM;
 }
 cq->qtype = q_type;


 if (!cq->num_rq_entries || !cq->num_sq_entries ||
     !cq->rq_buf_size || !cq->sq_buf_size) {
  return ICE_ERR_CFG;
 }


 cq->sq_cmd_timeout = ICE_CTL_Q_SQ_CMD_TIMEOUT;


 ret_code = ice_init_sq(hw, cq);
 if (ret_code)
  return ret_code;


 ret_code = ice_init_rq(hw, cq);
 if (ret_code)
  goto init_ctrlq_free_sq;


 return 0;

init_ctrlq_free_sq:
 ice_shutdown_sq(hw, cq);
 return ret_code;
}
