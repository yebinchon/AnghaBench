
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnad_tx_info {struct bna_tcb** tcb; } ;
struct bnad {int netdev; } ;
struct bna_tx {scalar_t__ priv; } ;
struct bna_tcb {int flags; int id; } ;


 int BNAD_MAX_TXQ_PER_TX ;
 int BNAD_TXQ_TX_STARTED ;
 int clear_bit (int ,int *) ;
 int netif_stop_subqueue (int ,int ) ;

__attribute__((used)) static void
bnad_cb_tx_stall(struct bnad *bnad, struct bna_tx *tx)
{
 struct bnad_tx_info *tx_info =
   (struct bnad_tx_info *)tx->priv;
 struct bna_tcb *tcb;
 u32 txq_id;
 int i;

 for (i = 0; i < BNAD_MAX_TXQ_PER_TX; i++) {
  tcb = tx_info->tcb[i];
  if (!tcb)
   continue;
  txq_id = tcb->id;
  clear_bit(BNAD_TXQ_TX_STARTED, &tcb->flags);
  netif_stop_subqueue(bnad->netdev, txq_id);
 }
}
