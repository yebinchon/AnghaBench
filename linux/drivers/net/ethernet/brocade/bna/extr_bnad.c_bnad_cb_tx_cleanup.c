
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad_tx_info {int tx_cleanup_work; struct bna_tcb** tcb; } ;
struct bnad {int work_q; } ;
struct bna_tx {scalar_t__ priv; } ;
struct bna_tcb {int dummy; } ;


 int BNAD_MAX_TXQ_PER_TX ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void
bnad_cb_tx_cleanup(struct bnad *bnad, struct bna_tx *tx)
{
 struct bnad_tx_info *tx_info = (struct bnad_tx_info *)tx->priv;
 struct bna_tcb *tcb;
 int i;

 for (i = 0; i < BNAD_MAX_TXQ_PER_TX; i++) {
  tcb = tx_info->tcb[i];
  if (!tcb)
   continue;
 }

 queue_delayed_work(bnad->work_q, &tx_info->tx_cleanup_work, 0);
}
