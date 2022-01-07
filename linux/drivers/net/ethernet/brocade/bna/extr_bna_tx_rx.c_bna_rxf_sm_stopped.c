
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {int dummy; } ;
typedef enum bna_rxf_event { ____Placeholder_bna_rxf_event } bna_rxf_event ;






 int bfa_fsm_set_state (struct bna_rxf*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_rxf_sm_cfg_wait ;
 int call_rxf_cam_fltr_cbfn (struct bna_rxf*) ;
 int call_rxf_stop_cbfn (struct bna_rxf*) ;

__attribute__((used)) static void
bna_rxf_sm_stopped(struct bna_rxf *rxf, enum bna_rxf_event event)
{
 switch (event) {
 case 129:
  bfa_fsm_set_state(rxf, bna_rxf_sm_cfg_wait);
  break;

 case 128:
  call_rxf_stop_cbfn(rxf);
  break;

 case 130:

  break;

 case 131:
  call_rxf_cam_fltr_cbfn(rxf);
  break;

 default:
  bfa_sm_fault(event);
 }
}
