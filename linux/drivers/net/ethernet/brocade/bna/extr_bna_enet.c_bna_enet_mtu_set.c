
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_enet {int mtu; void (* mtu_cbfn ) (struct bnad*) ;} ;


 int ENET_E_MTU_CFG ;
 int bfa_fsm_send_event (struct bna_enet*,int ) ;

void
bna_enet_mtu_set(struct bna_enet *enet, int mtu,
   void (*cbfn)(struct bnad *))
{
 enet->mtu = mtu;

 enet->mtu_cbfn = cbfn;

 bfa_fsm_send_event(enet, ENET_E_MTU_CFG);
}
