
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_wq {int wqebb_size; int delta; int prod_idx; } ;


 int ALIGN (unsigned int,int) ;
 int atomic_add (int,int *) ;
 int atomic_sub (int,int *) ;

void hinic_return_wqe(struct hinic_wq *wq, unsigned int wqe_size)
{
 int num_wqebbs = ALIGN(wqe_size, wq->wqebb_size) / wq->wqebb_size;

 atomic_sub(num_wqebbs, &wq->prod_idx);

 atomic_add(num_wqebbs, &wq->delta);
}
