
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_ctl_q_info {int dummy; } ;
struct ice_hw {struct ice_ctl_q_info adminq; } ;


 int ICE_CQ_INIT_REGS (struct ice_ctl_q_info*,int ) ;
 int PF_FW ;

__attribute__((used)) static void ice_adminq_init_regs(struct ice_hw *hw)
{
 struct ice_ctl_q_info *cq = &hw->adminq;

 ICE_CQ_INIT_REGS(cq, PF_FW);
}
