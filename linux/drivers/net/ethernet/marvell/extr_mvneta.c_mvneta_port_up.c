
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvneta_tx_queue {scalar_t__ descs; } ;
struct mvneta_rx_queue {scalar_t__ descs; } ;
struct mvneta_port {struct mvneta_rx_queue* rxqs; struct mvneta_tx_queue* txqs; } ;


 int MVNETA_RXQ_CMD ;
 int MVNETA_TXQ_CMD ;
 int mvreg_write (struct mvneta_port*,int ,int) ;
 int rxq_number ;
 int txq_number ;

__attribute__((used)) static void mvneta_port_up(struct mvneta_port *pp)
{
 int queue;
 u32 q_map;


 q_map = 0;
 for (queue = 0; queue < txq_number; queue++) {
  struct mvneta_tx_queue *txq = &pp->txqs[queue];
  if (txq->descs)
   q_map |= (1 << queue);
 }
 mvreg_write(pp, MVNETA_TXQ_CMD, q_map);

 q_map = 0;

 for (queue = 0; queue < rxq_number; queue++) {
  struct mvneta_rx_queue *rxq = &pp->rxqs[queue];

  if (rxq->descs)
   q_map |= (1 << queue);
 }
 mvreg_write(pp, MVNETA_RXQ_CMD, q_map);
}
