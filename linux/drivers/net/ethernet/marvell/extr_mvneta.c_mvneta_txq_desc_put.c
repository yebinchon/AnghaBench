
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_tx_queue {scalar_t__ next_desc_to_proc; scalar_t__ last_desc; } ;



__attribute__((used)) static void mvneta_txq_desc_put(struct mvneta_tx_queue *txq)
{
 if (txq->next_desc_to_proc == 0)
  txq->next_desc_to_proc = txq->last_desc - 1;
 else
  txq->next_desc_to_proc--;
}
