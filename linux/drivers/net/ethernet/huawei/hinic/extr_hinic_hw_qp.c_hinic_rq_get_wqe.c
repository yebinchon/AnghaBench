
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct hinic_rq_wqe {int dummy; } ;
struct hinic_rq {int wq; } ;
struct hinic_hw_wqe {struct hinic_rq_wqe rq_wqe; } ;


 scalar_t__ IS_ERR (struct hinic_hw_wqe*) ;
 struct hinic_hw_wqe* hinic_get_wqe (int ,unsigned int,int *) ;

struct hinic_rq_wqe *hinic_rq_get_wqe(struct hinic_rq *rq,
          unsigned int wqe_size, u16 *prod_idx)
{
 struct hinic_hw_wqe *hw_wqe = hinic_get_wqe(rq->wq, wqe_size,
          prod_idx);

 if (IS_ERR(hw_wqe))
  return ((void*)0);

 return &hw_wqe->rq_wqe;
}
