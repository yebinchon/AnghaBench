
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_enet {int chld_stop_wc; } ;


 int bfa_wc_down (int *) ;

__attribute__((used)) static void
bna_enet_cb_ethport_stopped(struct bna_enet *enet)
{
 bfa_wc_down(&enet->chld_stop_wc);
}
