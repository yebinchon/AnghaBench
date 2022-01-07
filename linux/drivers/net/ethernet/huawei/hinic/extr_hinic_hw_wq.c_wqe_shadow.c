
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_wq {size_t num_q_pages; size_t max_wqe_size; int * shadow_wqe; } ;
struct hinic_hw_wqe {int dummy; } ;


 int WQE_IN_RANGE (struct hinic_hw_wqe*,int *,int *) ;

__attribute__((used)) static inline bool wqe_shadow(struct hinic_wq *wq, struct hinic_hw_wqe *wqe)
{
 size_t wqe_shadow_size = wq->num_q_pages * wq->max_wqe_size;

 return WQE_IN_RANGE(wqe, wq->shadow_wqe,
       &wq->shadow_wqe[wqe_shadow_size]);
}
