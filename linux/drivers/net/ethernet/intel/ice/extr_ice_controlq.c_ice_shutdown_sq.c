
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ count; int bah; int bal; int len; int tail; int head; } ;
struct ice_ctl_q_info {int sq_lock; TYPE_1__ sq; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_ERR_NOT_READY ;
 int ICE_FREE_CQ_BUFS (struct ice_hw*,struct ice_ctl_q_info*,int ) ;
 int ice_free_cq_ring (struct ice_hw*,TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sq ;
 int wr32 (struct ice_hw*,int ,int ) ;

__attribute__((used)) static enum ice_status
ice_shutdown_sq(struct ice_hw *hw, struct ice_ctl_q_info *cq)
{
 enum ice_status ret_code = 0;

 mutex_lock(&cq->sq_lock);

 if (!cq->sq.count) {
  ret_code = ICE_ERR_NOT_READY;
  goto shutdown_sq_out;
 }


 wr32(hw, cq->sq.head, 0);
 wr32(hw, cq->sq.tail, 0);
 wr32(hw, cq->sq.len, 0);
 wr32(hw, cq->sq.bal, 0);
 wr32(hw, cq->sq.bah, 0);

 cq->sq.count = 0;


 ICE_FREE_CQ_BUFS(hw, cq, sq);
 ice_free_cq_ring(hw, &cq->sq);

shutdown_sq_out:
 mutex_unlock(&cq->sq_lock);
 return ret_code;
}
