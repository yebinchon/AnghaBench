
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_port {int * txqs; } ;


 int MVNETA_PORT_TX_DMA_RESET ;
 int MVNETA_PORT_TX_RESET ;
 int mvneta_txq_done_force (struct mvneta_port*,int *) ;
 int mvreg_write (struct mvneta_port*,int ,int ) ;
 int txq_number ;

__attribute__((used)) static void mvneta_tx_reset(struct mvneta_port *pp)
{
 int queue;


 for (queue = 0; queue < txq_number; queue++)
  mvneta_txq_done_force(pp, &pp->txqs[queue]);

 mvreg_write(pp, MVNETA_PORT_TX_RESET, MVNETA_PORT_TX_DMA_RESET);
 mvreg_write(pp, MVNETA_PORT_TX_RESET, 0);
}
