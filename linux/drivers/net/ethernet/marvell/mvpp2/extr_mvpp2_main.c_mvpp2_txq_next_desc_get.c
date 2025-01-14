
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_tx_queue {int next_desc_to_proc; struct mvpp2_tx_desc* descs; } ;
struct mvpp2_tx_desc {int dummy; } ;


 int MVPP2_QUEUE_NEXT_DESC (struct mvpp2_tx_queue*,int) ;

__attribute__((used)) static struct mvpp2_tx_desc *
mvpp2_txq_next_desc_get(struct mvpp2_tx_queue *txq)
{
 int tx_desc = txq->next_desc_to_proc;

 txq->next_desc_to_proc = MVPP2_QUEUE_NEXT_DESC(txq, tx_desc);
 return txq->descs + tx_desc;
}
