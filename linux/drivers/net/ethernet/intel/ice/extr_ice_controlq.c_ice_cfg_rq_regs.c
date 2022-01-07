
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ice_hw {int dummy; } ;
struct TYPE_2__ {int tail; } ;
struct ice_ctl_q_info {int num_rq_entries; TYPE_1__ rq; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ice_cfg_cq_regs (struct ice_hw*,TYPE_1__*,int) ;
 int wr32 (struct ice_hw*,int ,int ) ;

__attribute__((used)) static enum ice_status
ice_cfg_rq_regs(struct ice_hw *hw, struct ice_ctl_q_info *cq)
{
 enum ice_status status;

 status = ice_cfg_cq_regs(hw, &cq->rq, cq->num_rq_entries);
 if (status)
  return status;


 wr32(hw, cq->rq.tail, (u32)(cq->num_rq_entries - 1));

 return 0;
}
