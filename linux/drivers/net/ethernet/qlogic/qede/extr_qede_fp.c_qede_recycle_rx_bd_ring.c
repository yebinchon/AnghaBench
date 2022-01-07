
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sw_rx_data {int dummy; } ;
struct qede_rx_queue {size_t sw_rx_cons; struct sw_rx_data* sw_rx_ring; } ;


 size_t NUM_RX_BDS_MAX ;
 int qede_reuse_page (struct qede_rx_queue*,struct sw_rx_data*) ;
 int qede_rx_bd_ring_consume (struct qede_rx_queue*) ;

void qede_recycle_rx_bd_ring(struct qede_rx_queue *rxq, u8 count)
{
 struct sw_rx_data *curr_cons;

 for (; count > 0; count--) {
  curr_cons = &rxq->sw_rx_ring[rxq->sw_rx_cons & NUM_RX_BDS_MAX];
  qede_reuse_page(rxq, curr_cons);
  qede_rx_bd_ring_consume(rxq);
 }
}
