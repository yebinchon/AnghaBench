
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_hw {int dummy; } ;
struct ice_ctl_q_info {int num_sq_entries; int sq; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ice_cfg_cq_regs (struct ice_hw*,int *,int ) ;

__attribute__((used)) static enum ice_status
ice_cfg_sq_regs(struct ice_hw *hw, struct ice_ctl_q_info *cq)
{
 return ice_cfg_cq_regs(hw, &cq->sq, cq->num_sq_entries);
}
