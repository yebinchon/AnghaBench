
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_msgq {int rspq; int cmdq; int init_wc; } ;
typedef enum bfa_ioc_event { ____Placeholder_bfa_ioc_event } bfa_ioc_event ;





 int CMDQ_E_FAIL ;
 int CMDQ_E_START ;
 int CMDQ_E_STOP ;
 int RSPQ_E_FAIL ;
 int RSPQ_E_START ;
 int RSPQ_E_STOP ;
 int bfa_fsm_send_event (int *,int ) ;
 int bfa_msgq_init ;
 int bfa_wc_init (int *,int ,struct bfa_msgq*) ;
 int bfa_wc_up (int *) ;
 int bfa_wc_wait (int *) ;

__attribute__((used)) static void
bfa_msgq_notify(void *cbarg, enum bfa_ioc_event event)
{
 struct bfa_msgq *msgq = (struct bfa_msgq *)cbarg;

 switch (event) {
 case 129:
  bfa_wc_init(&msgq->init_wc, bfa_msgq_init, msgq);
  bfa_wc_up(&msgq->init_wc);
  bfa_fsm_send_event(&msgq->cmdq, CMDQ_E_START);
  bfa_wc_up(&msgq->init_wc);
  bfa_fsm_send_event(&msgq->rspq, RSPQ_E_START);
  bfa_wc_wait(&msgq->init_wc);
  break;

 case 130:
  bfa_fsm_send_event(&msgq->cmdq, CMDQ_E_STOP);
  bfa_fsm_send_event(&msgq->rspq, RSPQ_E_STOP);
  break;

 case 128:
  bfa_fsm_send_event(&msgq->cmdq, CMDQ_E_FAIL);
  bfa_fsm_send_event(&msgq->rspq, RSPQ_E_FAIL);
  break;

 default:
  break;
 }
}
