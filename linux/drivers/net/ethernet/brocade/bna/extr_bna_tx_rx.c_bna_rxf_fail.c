
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {int dummy; } ;


 int RXF_E_FAIL ;
 int bfa_fsm_send_event (struct bna_rxf*,int ) ;

__attribute__((used)) static void
bna_rxf_fail(struct bna_rxf *rxf)
{
 bfa_fsm_send_event(rxf, RXF_E_FAIL);
}
