
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_tx_queue {int dummy; } ;
struct mvneta_port {int dummy; } ;


 int mvneta_txq_hw_init (struct mvneta_port*,struct mvneta_tx_queue*) ;
 int mvneta_txq_sw_init (struct mvneta_port*,struct mvneta_tx_queue*) ;

__attribute__((used)) static int mvneta_txq_init(struct mvneta_port *pp,
      struct mvneta_tx_queue *txq)
{
 int ret;

 ret = mvneta_txq_sw_init(pp, txq);
 if (ret < 0)
  return ret;

 mvneta_txq_hw_init(pp, txq);

 return 0;
}
