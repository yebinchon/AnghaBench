
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_pause_config {int dummy; } ;
struct bna_enet {struct bna_pause_config pause_config; } ;


 int ENET_E_PAUSE_CFG ;
 int bfa_fsm_send_event (struct bna_enet*,int ) ;

void
bna_enet_pause_config(struct bna_enet *enet,
        struct bna_pause_config *pause_config)
{
 enet->pause_config = *pause_config;

 bfa_fsm_send_event(enet, ENET_E_PAUSE_CFG);
}
