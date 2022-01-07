
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ice_hw {int dummy; } ;
struct TYPE_2__ {int head_mask; scalar_t__ next_to_clean; int head; } ;
struct ice_ctl_q_info {TYPE_1__ rq; } ;


 int rd32 (struct ice_hw*,int ) ;

__attribute__((used)) static bool ice_ctrlq_pending(struct ice_hw *hw, struct ice_ctl_q_info *cq)
{
 u16 ntu;

 ntu = (u16)(rd32(hw, cq->rq.head) & cq->rq.head_mask);
 return cq->rq.next_to_clean != ntu;
}
