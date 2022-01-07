
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_rx_queue {int sw_rx_cons; int rx_bd_ring; } ;


 int qed_chain_consume (int *) ;

__attribute__((used)) static inline void qede_rx_bd_ring_consume(struct qede_rx_queue *rxq)
{
 qed_chain_consume(&rxq->rx_bd_ring);
 rxq->sw_rx_cons++;
}
