
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ next_to_use; int head; } ;
struct ice_ctl_q_info {TYPE_1__ sq; } ;


 scalar_t__ rd32 (struct ice_hw*,int ) ;

__attribute__((used)) static bool ice_sq_done(struct ice_hw *hw, struct ice_ctl_q_info *cq)
{



 return rd32(hw, cq->sq.head) == cq->sq.next_to_use;
}
