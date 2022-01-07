
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_tx_queue {scalar_t__ txq_put_index; scalar_t__ size; } ;



__attribute__((used)) static void mvneta_txq_inc_put(struct mvneta_tx_queue *txq)
{
 txq->txq_put_index++;
 if (txq->txq_put_index == txq->size)
  txq->txq_put_index = 0;
}
