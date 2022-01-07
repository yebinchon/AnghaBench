
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_ctl_q_info {int dummy; } ;
struct ice_hw {struct ice_ctl_q_info mailboxq; struct ice_ctl_q_info adminq; } ;
typedef enum ice_ctl_q { ____Placeholder_ice_ctl_q } ice_ctl_q ;




 int ice_aq_q_shutdown (struct ice_hw*,int) ;
 int ice_check_sq_alive (struct ice_hw*,struct ice_ctl_q_info*) ;
 int ice_shutdown_rq (struct ice_hw*,struct ice_ctl_q_info*) ;
 int ice_shutdown_sq (struct ice_hw*,struct ice_ctl_q_info*) ;

__attribute__((used)) static void ice_shutdown_ctrlq(struct ice_hw *hw, enum ice_ctl_q q_type)
{
 struct ice_ctl_q_info *cq;

 switch (q_type) {
 case 129:
  cq = &hw->adminq;
  if (ice_check_sq_alive(hw, cq))
   ice_aq_q_shutdown(hw, 1);
  break;
 case 128:
  cq = &hw->mailboxq;
  break;
 default:
  return;
 }

 ice_shutdown_sq(hw, cq);
 ice_shutdown_rq(hw, cq);
}
