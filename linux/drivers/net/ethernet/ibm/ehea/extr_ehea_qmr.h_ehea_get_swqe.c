
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_queue {int current_q_offset; } ;
struct ehea_swqe {int dummy; } ;
struct ehea_qp {struct hw_queue hw_squeue; } ;


 int EHEA_SG_SQ ;
 struct ehea_swqe* hw_qeit_get_inc (struct hw_queue*) ;

__attribute__((used)) static inline struct ehea_swqe *ehea_get_swqe(struct ehea_qp *my_qp,
           int *wqe_index)
{
 struct hw_queue *queue = &my_qp->hw_squeue;
 struct ehea_swqe *wqe_p;

 *wqe_index = (queue->current_q_offset) >> (7 + EHEA_SG_SQ);
 wqe_p = hw_qeit_get_inc(&my_qp->hw_squeue);

 return wqe_p;
}
