
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_ctl_q_info {int dummy; } ;
struct ice_hw {struct ice_ctl_q_info mailboxq; } ;


 int ICE_CQ_INIT_REGS (struct ice_ctl_q_info*,int ) ;
 int PF_MBX ;

__attribute__((used)) static void ice_mailbox_init_regs(struct ice_hw *hw)
{
 struct ice_ctl_q_info *cq = &hw->mailboxq;

 ICE_CQ_INIT_REGS(cq, PF_MBX);
}
