
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_ethport {int dummy; } ;
typedef enum bna_ethport_event { ____Placeholder_bna_ethport_event } bna_ethport_event ;





 int bfa_fsm_set_state (struct bna_ethport*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_bfi_ethport_down (struct bna_ethport*) ;
 int bna_ethport_sm_down_resp_wait ;
 int bna_ethport_sm_last_resp_wait ;
 int bna_ethport_sm_stopped ;

__attribute__((used)) static void
bna_ethport_sm_up(struct bna_ethport *ethport,
   enum bna_ethport_event event)
{
 switch (event) {
 case 128:
  bfa_fsm_set_state(ethport, bna_ethport_sm_last_resp_wait);
  bna_bfi_ethport_down(ethport);
  break;

 case 129:
  bfa_fsm_set_state(ethport, bna_ethport_sm_stopped);
  break;

 case 130:
  bfa_fsm_set_state(ethport, bna_ethport_sm_down_resp_wait);
  bna_bfi_ethport_down(ethport);
  break;

 default:
  bfa_sm_fault(event);
 }
}
