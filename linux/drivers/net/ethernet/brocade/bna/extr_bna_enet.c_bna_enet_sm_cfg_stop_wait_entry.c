
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_enet {int flags; } ;


 int BNA_ENET_F_MTU_CHANGED ;
 int BNA_ENET_F_PAUSE_CHANGED ;

__attribute__((used)) static void
bna_enet_sm_cfg_stop_wait_entry(struct bna_enet *enet)
{
 enet->flags &= ~BNA_ENET_F_PAUSE_CHANGED;
 enet->flags &= ~BNA_ENET_F_MTU_CHANGED;
}
