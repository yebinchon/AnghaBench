
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_tx {int flags; } ;


 int BNA_TX_F_ENET_STARTED ;
 int TX_E_FAIL ;
 int bfa_fsm_send_event (struct bna_tx*,int ) ;

__attribute__((used)) static void
bna_tx_fail(struct bna_tx *tx)
{
 tx->flags &= ~BNA_TX_F_ENET_STARTED;
 bfa_fsm_send_event(tx, TX_E_FAIL);
}
