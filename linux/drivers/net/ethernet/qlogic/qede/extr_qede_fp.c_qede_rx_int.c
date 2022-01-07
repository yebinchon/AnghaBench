
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct qede_rx_queue {int rcv_pkts; scalar_t__ filled_buffers; scalar_t__ num_rx_buffers; int rx_comp_ring; int * hw_cons_ptr; } ;
struct qede_fastpath {struct qede_dev* edev; struct qede_rx_queue* rxq; } ;
struct qede_dev {int dummy; } ;


 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ qed_chain_get_cons_idx (int *) ;
 int qed_chain_recycle_consumed (int *) ;
 scalar_t__ qede_alloc_rx_buffer (struct qede_rx_queue*,int) ;
 scalar_t__ qede_rx_process_cqe (struct qede_dev*,struct qede_fastpath*,struct qede_rx_queue*) ;
 int qede_update_rx_prod (struct qede_dev*,struct qede_rx_queue*) ;
 int rmb () ;

__attribute__((used)) static int qede_rx_int(struct qede_fastpath *fp, int budget)
{
 struct qede_rx_queue *rxq = fp->rxq;
 struct qede_dev *edev = fp->edev;
 int work_done = 0, rcv_pkts = 0;
 u16 hw_comp_cons, sw_comp_cons;

 hw_comp_cons = le16_to_cpu(*rxq->hw_cons_ptr);
 sw_comp_cons = qed_chain_get_cons_idx(&rxq->rx_comp_ring);






 rmb();


 while ((sw_comp_cons != hw_comp_cons) && (work_done < budget)) {
  rcv_pkts += qede_rx_process_cqe(edev, fp, rxq);
  qed_chain_recycle_consumed(&rxq->rx_comp_ring);
  sw_comp_cons = qed_chain_get_cons_idx(&rxq->rx_comp_ring);
  work_done++;
 }

 rxq->rcv_pkts += rcv_pkts;


 while (rxq->num_rx_buffers - rxq->filled_buffers)
  if (qede_alloc_rx_buffer(rxq, 0))
   break;


 qede_update_rx_prod(edev, rxq);

 return work_done;
}
