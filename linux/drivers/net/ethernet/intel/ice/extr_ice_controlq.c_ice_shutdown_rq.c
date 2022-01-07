
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ count; int bah; int bal; int len; int tail; int head; } ;
struct ice_ctl_q_info {int rq_lock; TYPE_1__ rq; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_ERR_NOT_READY ;
 int ICE_FREE_CQ_BUFS (struct ice_hw*,struct ice_ctl_q_info*,int ) ;
 int ice_free_cq_ring (struct ice_hw*,TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rq ;
 int wr32 (struct ice_hw*,int ,int ) ;

__attribute__((used)) static enum ice_status
ice_shutdown_rq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
{
 enum ice_status ret_code = 0;

 mutex_lock(&cq->rq_lock);

 if (!cq->rq.count) {
  ret_code = ICE_ERR_NOT_READY;
  goto shutdown_rq_out;
 }


 wr32(hw, cq->rq.head, 0);
 wr32(hw, cq->rq.tail, 0);
 wr32(hw, cq->rq.len, 0);
 wr32(hw, cq->rq.bal, 0);
 wr32(hw, cq->rq.bah, 0);


 cq->rq.count = 0;


 ICE_FREE_CQ_BUFS(hw, cq, rq);
 ice_free_cq_ring(hw, &cq->rq);

shutdown_rq_out:
 mutex_unlock(&cq->rq_lock);
 return ret_code;
}
