
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_ioceth {int dummy; } ;
typedef enum bna_ioceth_event { ____Placeholder_bna_ioceth_event } bna_ioceth_event ;





 int bfa_fsm_set_state (struct bna_ioceth*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_ioceth_sm_failed ;
 int bna_ioceth_sm_last_resp_wait ;
 int bna_ioceth_sm_ready ;
 int disable_mbox_intr (struct bna_ioceth*) ;

__attribute__((used)) static void
bna_ioceth_sm_enet_attr_wait(struct bna_ioceth *ioceth,
    enum bna_ioceth_event event)
{
 switch (event) {
 case 130:
  bfa_fsm_set_state(ioceth, bna_ioceth_sm_last_resp_wait);
  break;

 case 128:
  disable_mbox_intr(ioceth);
  bfa_fsm_set_state(ioceth, bna_ioceth_sm_failed);
  break;

 case 129:
  bfa_fsm_set_state(ioceth, bna_ioceth_sm_ready);
  break;

 default:
  bfa_sm_fault(event);
 }
}
