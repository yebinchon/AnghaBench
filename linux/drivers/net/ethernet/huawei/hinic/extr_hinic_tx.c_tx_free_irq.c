
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_txq {struct hinic_sq* sq; } ;
struct hinic_sq {int irq; } ;


 int free_irq (int ,struct hinic_txq*) ;
 int tx_napi_del (struct hinic_txq*) ;

__attribute__((used)) static void tx_free_irq(struct hinic_txq *txq)
{
 struct hinic_sq *sq = txq->sq;

 free_irq(sq->irq, txq);
 tx_napi_del(txq);
}
