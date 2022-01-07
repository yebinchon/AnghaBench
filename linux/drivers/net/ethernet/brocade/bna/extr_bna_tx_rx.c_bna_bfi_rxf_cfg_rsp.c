
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {int dummy; } ;
struct bfi_msgq_mhdr {int dummy; } ;


 int RXF_E_FW_RESP ;
 int bfa_fsm_send_event (struct bna_rxf*,int ) ;

void
bna_bfi_rxf_cfg_rsp(struct bna_rxf *rxf, struct bfi_msgq_mhdr *msghdr)
{
 bfa_fsm_send_event(rxf, RXF_E_FW_RESP);
}
