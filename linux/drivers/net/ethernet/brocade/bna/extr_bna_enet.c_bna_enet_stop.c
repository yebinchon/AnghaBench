
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bna_enet {int flags; TYPE_1__* bna; int * stop_cbarg; int stop_cbfn; } ;
struct TYPE_2__ {int ioceth; } ;


 int BNA_ENET_F_IOCETH_READY ;
 int ENET_E_STOP ;
 int bfa_fsm_send_event (struct bna_enet*,int ) ;
 int bna_ioceth_cb_enet_stopped ;

__attribute__((used)) static void
bna_enet_stop(struct bna_enet *enet)
{
 enet->stop_cbfn = bna_ioceth_cb_enet_stopped;
 enet->stop_cbarg = &enet->bna->ioceth;

 enet->flags &= ~BNA_ENET_F_IOCETH_READY;
 bfa_fsm_send_event(enet, ENET_E_STOP);
}
