
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slic_tx_queue {int len; int done_idx; int put_idx; } ;


 unsigned int slic_get_free_queue_descs (int ,int ,int ) ;
 int smp_mb () ;

__attribute__((used)) static unsigned int slic_get_free_tx_descs(struct slic_tx_queue *txq)
{

 smp_mb();
 return slic_get_free_queue_descs(txq->put_idx, txq->done_idx, txq->len);
}
