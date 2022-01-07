
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct qede_rx_queue {int rx_comp_ring; int * hw_cons_ptr; } ;


 int barrier () ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ qed_chain_get_cons_idx (int *) ;

bool qede_has_rx_work(struct qede_rx_queue *rxq)
{
 u16 hw_comp_cons, sw_comp_cons;


 barrier();

 hw_comp_cons = le16_to_cpu(*rxq->hw_cons_ptr);
 sw_comp_cons = qed_chain_get_cons_idx(&rxq->rx_comp_ring);

 return hw_comp_cons != sw_comp_cons;
}
