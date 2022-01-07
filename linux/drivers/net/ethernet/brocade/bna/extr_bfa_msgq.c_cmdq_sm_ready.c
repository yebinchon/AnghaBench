
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_msgq_cmdq {int dummy; } ;
typedef enum cmdq_event { ____Placeholder_cmdq_event } cmdq_event ;





 int bfa_fsm_set_state (struct bfa_msgq_cmdq*,int ) ;
 int bfa_sm_fault (int) ;
 int cmdq_sm_dbell_wait ;
 int cmdq_sm_stopped ;

__attribute__((used)) static void
cmdq_sm_ready(struct bfa_msgq_cmdq *cmdq, enum cmdq_event event)
{
 switch (event) {
 case 128:
 case 130:
  bfa_fsm_set_state(cmdq, cmdq_sm_stopped);
  break;

 case 129:
  bfa_fsm_set_state(cmdq, cmdq_sm_dbell_wait);
  break;

 default:
  bfa_sm_fault(event);
 }
}
