
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_tx_queue {scalar_t__ txq_get_index; scalar_t__ size; } ;



__attribute__((used)) static void mvneta_txq_inc_get(struct mvneta_tx_queue *txq)
{
 txq->txq_get_index++;
 if (txq->txq_get_index == txq->size)
  txq->txq_get_index = 0;
}
