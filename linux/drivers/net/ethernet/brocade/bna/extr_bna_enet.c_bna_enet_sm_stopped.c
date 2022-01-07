
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_enet {int dummy; } ;
typedef enum bna_enet_event { ____Placeholder_bna_enet_event } bna_enet_event ;
 int bfa_fsm_set_state (struct bna_enet*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_enet_sm_pause_init_wait ;
 int call_enet_mtu_cbfn (struct bna_enet*) ;
 int call_enet_stop_cbfn (struct bna_enet*) ;

__attribute__((used)) static void
bna_enet_sm_stopped(struct bna_enet *enet, enum bna_enet_event event)
{
 switch (event) {
 case 129:
  bfa_fsm_set_state(enet, bna_enet_sm_pause_init_wait);
  break;

 case 128:
  call_enet_stop_cbfn(enet);
  break;

 case 132:

  break;

 case 130:
  break;

 case 131:
  call_enet_mtu_cbfn(enet);
  break;

 case 133:





  break;

 default:
  bfa_sm_fault(event);
 }
}
