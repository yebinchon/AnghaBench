
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_tx {int dummy; } ;
typedef enum bna_tx_event { ____Placeholder_bna_tx_event } bna_tx_event ;





 int bfa_fsm_set_state (struct bna_tx*,int ) ;
 int bfa_sm_fault (int) ;
 int bna_tx_sm_stopped ;

__attribute__((used)) static void
bna_tx_sm_cleanup_wait(struct bna_tx *tx, enum bna_tx_event event)
{
 switch (event) {
 case 128:
 case 130:

  break;

 case 129:
  bfa_fsm_set_state(tx, bna_tx_sm_stopped);
  break;

 default:
  bfa_sm_fault(event);
 }
}
