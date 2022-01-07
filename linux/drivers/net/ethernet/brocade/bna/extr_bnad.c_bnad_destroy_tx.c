
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct bnad_tx_info {scalar_t__ tx_id; int * tx; TYPE_3__** tcb; } ;
struct TYPE_5__ {int tx_comp; } ;
struct bnad {int bna_lock; int num_txq_per_tx; TYPE_2__ bnad_completions; TYPE_1__* tx_res_info; struct bnad_tx_info* tx_info; } ;
struct bna_res_info {int dummy; } ;
struct TYPE_6__ {scalar_t__ intr_type; } ;
struct TYPE_4__ {struct bna_res_info* res_info; } ;


 int BNA_HARD_CLEANUP ;
 scalar_t__ BNA_INTR_T_MSIX ;
 int bna_tx_destroy (int *) ;
 int bna_tx_disable (int *,int ,int ) ;
 int bnad_cb_tx_disabled ;
 int bnad_tx_msix_unregister (struct bnad*,struct bnad_tx_info*,int ) ;
 int bnad_tx_res_free (struct bnad*,struct bna_res_info*) ;
 int init_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

void
bnad_destroy_tx(struct bnad *bnad, u32 tx_id)
{
 struct bnad_tx_info *tx_info = &bnad->tx_info[tx_id];
 struct bna_res_info *res_info = &bnad->tx_res_info[tx_id].res_info[0];
 unsigned long flags;

 if (!tx_info->tx)
  return;

 init_completion(&bnad->bnad_completions.tx_comp);
 spin_lock_irqsave(&bnad->bna_lock, flags);
 bna_tx_disable(tx_info->tx, BNA_HARD_CLEANUP, bnad_cb_tx_disabled);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);
 wait_for_completion(&bnad->bnad_completions.tx_comp);

 if (tx_info->tcb[0]->intr_type == BNA_INTR_T_MSIX)
  bnad_tx_msix_unregister(bnad, tx_info,
   bnad->num_txq_per_tx);

 spin_lock_irqsave(&bnad->bna_lock, flags);
 bna_tx_destroy(tx_info->tx);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);

 tx_info->tx = ((void*)0);
 tx_info->tx_id = 0;

 bnad_tx_res_free(bnad, res_info);
}
