
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_ioceth {scalar_t__ fsm; TYPE_1__* bna; } ;
typedef scalar_t__ bfa_fsm_t ;
struct TYPE_2__ {int bnad; } ;


 int IOCETH_E_ENABLE ;
 int bfa_fsm_send_event (struct bna_ioceth*,int ) ;
 scalar_t__ bna_ioceth_sm_ready ;
 scalar_t__ bna_ioceth_sm_stopped ;
 int bnad_cb_ioceth_ready (int ) ;

void
bna_ioceth_enable(struct bna_ioceth *ioceth)
{
 if (ioceth->fsm == (bfa_fsm_t)bna_ioceth_sm_ready) {
  bnad_cb_ioceth_ready(ioceth->bna->bnad);
  return;
 }

 if (ioceth->fsm == (bfa_fsm_t)bna_ioceth_sm_stopped)
  bfa_fsm_send_event(ioceth, IOCETH_E_ENABLE);
}
