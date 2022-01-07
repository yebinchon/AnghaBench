
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_enet {int * mtu_cbfn; int * stop_cbarg; int * stop_cbfn; int type; scalar_t__ mtu; scalar_t__ flags; struct bna* bna; } ;
struct bna {int dummy; } ;


 int BNA_ENET_T_REGULAR ;
 int bfa_fsm_set_state (struct bna_enet*,int ) ;
 int bna_enet_sm_stopped ;

__attribute__((used)) static void
bna_enet_init(struct bna_enet *enet, struct bna *bna)
{
 enet->bna = bna;
 enet->flags = 0;
 enet->mtu = 0;
 enet->type = BNA_ENET_T_REGULAR;

 enet->stop_cbfn = ((void*)0);
 enet->stop_cbarg = ((void*)0);

 enet->mtu_cbfn = ((void*)0);

 bfa_fsm_set_state(enet, bna_enet_sm_stopped);
}
