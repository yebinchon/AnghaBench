
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hinic_wq {int wqebb_size; int max_wqe_size; int * shadow_wqe; int * shadow_idx; } ;
struct hinic_hw_wqe {int dummy; } ;


 int ALIGN (unsigned int,int) ;
 int WQE_SHADOW_PAGE (struct hinic_wq*,struct hinic_hw_wqe*) ;
 int copy_wqe_from_shadow (struct hinic_wq*,void*,int,int ) ;
 scalar_t__ wqe_shadow (struct hinic_wq*,struct hinic_hw_wqe*) ;

void hinic_write_wqe(struct hinic_wq *wq, struct hinic_hw_wqe *wqe,
       unsigned int wqe_size)
{
 int curr_pg, num_wqebbs;
 void *shadow_addr;
 u16 prod_idx;

 if (wqe_shadow(wq, wqe)) {
  curr_pg = WQE_SHADOW_PAGE(wq, wqe);

  prod_idx = wq->shadow_idx[curr_pg];
  num_wqebbs = ALIGN(wqe_size, wq->wqebb_size) / wq->wqebb_size;
  shadow_addr = &wq->shadow_wqe[curr_pg * wq->max_wqe_size];

  copy_wqe_from_shadow(wq, shadow_addr, num_wqebbs, prod_idx);
 }
}
