
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_tx {int flags; } ;


 int BNA_TX_F_ENABLED ;
 int BNA_TX_F_ENET_STARTED ;
 int TX_E_START ;
 int bfa_fsm_send_event (struct bna_tx*,int ) ;

__attribute__((used)) static void
bna_tx_start(struct bna_tx *tx)
{
 tx->flags |= BNA_TX_F_ENET_STARTED;
 if (tx->flags & BNA_TX_F_ENABLED)
  bfa_fsm_send_event(tx, TX_E_START);
}
