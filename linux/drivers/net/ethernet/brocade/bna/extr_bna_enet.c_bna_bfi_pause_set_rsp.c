
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_enet {int dummy; } ;
struct bfi_msgq_mhdr {int dummy; } ;


 int ENET_E_FWRESP_PAUSE ;
 int bfa_fsm_send_event (struct bna_enet*,int ) ;

__attribute__((used)) static void
bna_bfi_pause_set_rsp(struct bna_enet *enet, struct bfi_msgq_mhdr *msghdr)
{
 bfa_fsm_send_event(enet, ENET_E_FWRESP_PAUSE);
}
