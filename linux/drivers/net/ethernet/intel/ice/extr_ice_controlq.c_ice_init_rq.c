
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ count; scalar_t__ next_to_clean; scalar_t__ next_to_use; } ;
struct ice_ctl_q_info {scalar_t__ num_rq_entries; TYPE_1__ rq; int rq_buf_size; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_ERR_CFG ;
 int ICE_ERR_NOT_READY ;
 int ice_alloc_ctrlq_rq_ring (struct ice_hw*,struct ice_ctl_q_info*) ;
 int ice_alloc_rq_bufs (struct ice_hw*,struct ice_ctl_q_info*) ;
 int ice_cfg_rq_regs (struct ice_hw*,struct ice_ctl_q_info*) ;
 int ice_free_cq_ring (struct ice_hw*,TYPE_1__*) ;

__attribute__((used)) static enum ice_status ice_init_rq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
{
 enum ice_status ret_code;

 if (cq->rq.count > 0) {

  ret_code = ICE_ERR_NOT_READY;
  goto init_ctrlq_exit;
 }


 if (!cq->num_rq_entries || !cq->rq_buf_size) {
  ret_code = ICE_ERR_CFG;
  goto init_ctrlq_exit;
 }

 cq->rq.next_to_use = 0;
 cq->rq.next_to_clean = 0;


 ret_code = ice_alloc_ctrlq_rq_ring(hw, cq);
 if (ret_code)
  goto init_ctrlq_exit;


 ret_code = ice_alloc_rq_bufs(hw, cq);
 if (ret_code)
  goto init_ctrlq_free_rings;


 ret_code = ice_cfg_rq_regs(hw, cq);
 if (ret_code)
  goto init_ctrlq_free_rings;


 cq->rq.count = cq->num_rq_entries;
 goto init_ctrlq_exit;

init_ctrlq_free_rings:
 ice_free_cq_ring(hw, &cq->rq);

init_ctrlq_exit:
 return ret_code;
}
