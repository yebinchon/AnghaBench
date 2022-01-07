
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_wq {int wqebb_size_shift; int delta; int cons_idx; int wqebb_size; } ;


 int ALIGN (unsigned int,int ) ;
 int atomic_add (int,int *) ;

void hinic_put_wqe(struct hinic_wq *wq, unsigned int wqe_size)
{
 int num_wqebbs = ALIGN(wqe_size, wq->wqebb_size)
   >> wq->wqebb_size_shift;

 atomic_add(num_wqebbs, &wq->cons_idx);

 atomic_add(num_wqebbs, &wq->delta);
}
