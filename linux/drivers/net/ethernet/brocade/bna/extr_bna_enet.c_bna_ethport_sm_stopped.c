
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_ethport {int dummy; } ;
typedef enum bna_ethport_event { ____Placeholder_bna_ethport_event } bna_ethport_event ;






 int bfa_fsm_set_state (struct bna_ethport*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_ethport_sm_down ;
 int call_ethport_stop_cbfn (struct bna_ethport*) ;

__attribute__((used)) static void
bna_ethport_sm_stopped(struct bna_ethport *ethport,
   enum bna_ethport_event event)
{
 switch (event) {
 case 129:
  bfa_fsm_set_state(ethport, bna_ethport_sm_down);
  break;

 case 128:
  call_ethport_stop_cbfn(ethport);
  break;

 case 130:

  break;

 case 131:


  break;

 default:
  bfa_sm_fault(event);
 }
}
