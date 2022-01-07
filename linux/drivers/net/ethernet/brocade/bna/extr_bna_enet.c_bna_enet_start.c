
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_enet {int flags; } ;


 int BNA_ENET_F_ENABLED ;
 int BNA_ENET_F_IOCETH_READY ;
 int ENET_E_START ;
 int bfa_fsm_send_event (struct bna_enet*,int ) ;

__attribute__((used)) static void
bna_enet_start(struct bna_enet *enet)
{
 enet->flags |= BNA_ENET_F_IOCETH_READY;
 if (enet->flags & BNA_ENET_F_ENABLED)
  bfa_fsm_send_event(enet, ENET_E_START);
}
