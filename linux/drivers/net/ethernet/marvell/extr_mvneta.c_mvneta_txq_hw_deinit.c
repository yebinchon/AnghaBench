
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_tx_queue {int id; } ;
struct mvneta_port {int dummy; } ;


 int MVETH_TXQ_TOKEN_CFG_REG (int ) ;
 int MVETH_TXQ_TOKEN_COUNT_REG (int ) ;
 int MVNETA_TXQ_BASE_ADDR_REG (int ) ;
 int MVNETA_TXQ_SIZE_REG (int ) ;
 int mvreg_write (struct mvneta_port*,int ,int ) ;

__attribute__((used)) static void mvneta_txq_hw_deinit(struct mvneta_port *pp,
     struct mvneta_tx_queue *txq)
{

 mvreg_write(pp, MVETH_TXQ_TOKEN_CFG_REG(txq->id), 0);
 mvreg_write(pp, MVETH_TXQ_TOKEN_COUNT_REG(txq->id), 0);


 mvreg_write(pp, MVNETA_TXQ_BASE_ADDR_REG(txq->id), 0);
 mvreg_write(pp, MVNETA_TXQ_SIZE_REG(txq->id), 0);
}
