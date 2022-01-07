
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_tx_queue {int next_desc_to_proc; struct mvneta_tx_desc* descs; } ;
struct mvneta_tx_desc {int dummy; } ;


 int MVNETA_QUEUE_NEXT_DESC (struct mvneta_tx_queue*,int) ;

__attribute__((used)) static struct mvneta_tx_desc *
mvneta_txq_next_desc_get(struct mvneta_tx_queue *txq)
{
 int tx_desc = txq->next_desc_to_proc;

 txq->next_desc_to_proc = MVNETA_QUEUE_NEXT_DESC(txq, tx_desc);
 return txq->descs + tx_desc;
}
