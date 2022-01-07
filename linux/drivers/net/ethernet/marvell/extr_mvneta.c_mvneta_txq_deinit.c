
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_tx_queue {int dummy; } ;
struct mvneta_port {int dummy; } ;


 int mvneta_txq_hw_deinit (struct mvneta_port*,struct mvneta_tx_queue*) ;
 int mvneta_txq_sw_deinit (struct mvneta_port*,struct mvneta_tx_queue*) ;

__attribute__((used)) static void mvneta_txq_deinit(struct mvneta_port *pp,
         struct mvneta_tx_queue *txq)
{
 mvneta_txq_sw_deinit(pp, txq);
 mvneta_txq_hw_deinit(pp, txq);
}
