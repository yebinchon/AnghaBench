
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_tx_queue {int descs_phys; int size; int done_pkts_coal; int id; } ;
struct mvneta_port {int dummy; } ;


 int MVETH_TXQ_TOKEN_CFG_REG (int ) ;
 int MVETH_TXQ_TOKEN_COUNT_REG (int ) ;
 int MVNETA_TXQ_BASE_ADDR_REG (int ) ;
 int MVNETA_TXQ_SIZE_REG (int ) ;
 int mvneta_tx_done_pkts_coal_set (struct mvneta_port*,struct mvneta_tx_queue*,int ) ;
 int mvreg_write (struct mvneta_port*,int ,int) ;

__attribute__((used)) static void mvneta_txq_hw_init(struct mvneta_port *pp,
          struct mvneta_tx_queue *txq)
{

 mvreg_write(pp, MVETH_TXQ_TOKEN_CFG_REG(txq->id), 0x03ffffff);
 mvreg_write(pp, MVETH_TXQ_TOKEN_COUNT_REG(txq->id), 0x3fffffff);


 mvreg_write(pp, MVNETA_TXQ_BASE_ADDR_REG(txq->id), txq->descs_phys);
 mvreg_write(pp, MVNETA_TXQ_SIZE_REG(txq->id), txq->size);

 mvneta_tx_done_pkts_coal_set(pp, txq, txq->done_pkts_coal);
}
