
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_ethport {int flags; int * adminup_cbfn; int * stop_cbfn; scalar_t__ rx_started_count; int link_cbfn; int link_status; struct bna* bna; } ;
struct bna {int dummy; } ;


 int BNA_ETHPORT_F_ADMIN_UP ;
 int BNA_ETHPORT_F_PORT_ENABLED ;
 int BNA_LINK_DOWN ;
 int bfa_fsm_set_state (struct bna_ethport*,int ) ;
 int bna_ethport_sm_stopped ;
 int bnad_cb_ethport_link_status ;

__attribute__((used)) static void
bna_ethport_init(struct bna_ethport *ethport, struct bna *bna)
{
 ethport->flags |= (BNA_ETHPORT_F_ADMIN_UP | BNA_ETHPORT_F_PORT_ENABLED);
 ethport->bna = bna;

 ethport->link_status = BNA_LINK_DOWN;
 ethport->link_cbfn = bnad_cb_ethport_link_status;

 ethport->rx_started_count = 0;

 ethport->stop_cbfn = ((void*)0);
 ethport->adminup_cbfn = ((void*)0);

 bfa_fsm_set_state(ethport, bna_ethport_sm_stopped);
}
