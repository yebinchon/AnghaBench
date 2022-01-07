
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_rx {TYPE_1__* bna; int (* rx_cleanup_cbfn ) (int ,struct bna_rx*) ;} ;
typedef enum bna_rx_event { ____Placeholder_bna_rx_event } bna_rx_event ;
struct TYPE_2__ {int bnad; } ;





 int bfa_fsm_set_state (struct bna_rx*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_rx_enet_stop (struct bna_rx*) ;
 int bna_rx_sm_cleanup_wait ;
 int stub1 (int ,struct bna_rx*) ;

__attribute__((used)) static void
bna_rx_sm_stop_wait(struct bna_rx *rx, enum bna_rx_event event)
{
 switch (event) {
 case 130:
 case 128:
  bfa_fsm_set_state(rx, bna_rx_sm_cleanup_wait);
  rx->rx_cleanup_cbfn(rx->bna->bnad, rx);
  break;

 case 129:
  bna_rx_enet_stop(rx);
  break;

 default:
  bfa_sm_fault(event);
  break;
 }
}
