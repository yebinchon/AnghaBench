
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_mbmsg {int dummy; } ;
struct bfa_msgq {int rspq; int cmdq; } ;


 int CMDQ_E_INIT_RESP ;
 int RSPQ_E_INIT_RESP ;
 int bfa_fsm_send_event (int *,int ) ;

__attribute__((used)) static void
bfa_msgq_init_rsp(struct bfa_msgq *msgq,
   struct bfi_mbmsg *mb)
{
 bfa_fsm_send_event(&msgq->cmdq, CMDQ_E_INIT_RESP);
 bfa_fsm_send_event(&msgq->rspq, RSPQ_E_INIT_RESP);
}
