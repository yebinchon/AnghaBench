
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_msgq_cmdq {int flags; } ;
typedef enum cmdq_event { ____Placeholder_cmdq_event } cmdq_event ;


 int BFA_MSGQ_CMDQ_F_DB_UPDATE ;




 int bfa_fsm_set_state (struct bfa_msgq_cmdq*,void (*) (struct bfa_msgq_cmdq*,int)) ;
 int bfa_sm_fault (int) ;
 void cmdq_sm_ready (struct bfa_msgq_cmdq*,int) ;
 void cmdq_sm_stopped (struct bfa_msgq_cmdq*,int) ;

__attribute__((used)) static void
cmdq_sm_dbell_wait(struct bfa_msgq_cmdq *cmdq, enum cmdq_event event)
{
 switch (event) {
 case 128:
 case 130:
  bfa_fsm_set_state(cmdq, cmdq_sm_stopped);
  break;

 case 129:
  cmdq->flags |= BFA_MSGQ_CMDQ_F_DB_UPDATE;
  break;

 case 131:
  if (cmdq->flags & BFA_MSGQ_CMDQ_F_DB_UPDATE) {
   cmdq->flags &= ~BFA_MSGQ_CMDQ_F_DB_UPDATE;
   bfa_fsm_set_state(cmdq, cmdq_sm_dbell_wait);
  } else
   bfa_fsm_set_state(cmdq, cmdq_sm_ready);
  break;

 default:
  bfa_sm_fault(event);
 }
}
