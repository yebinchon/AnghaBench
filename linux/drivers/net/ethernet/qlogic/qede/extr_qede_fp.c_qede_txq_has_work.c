
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct qede_tx_queue {int tx_pbl; int * hw_cons_ptr; } ;


 int barrier () ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ qed_chain_get_cons_idx (int *) ;

int qede_txq_has_work(struct qede_tx_queue *txq)
{
 u16 hw_bd_cons;


 barrier();
 hw_bd_cons = le16_to_cpu(*txq->hw_cons_ptr);
 if (qed_chain_get_cons_idx(&txq->tx_pbl) == hw_bd_cons + 1)
  return 0;

 return hw_bd_cons != qed_chain_get_cons_idx(&txq->tx_pbl);
}
