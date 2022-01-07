
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_wq {int delta; } ;
struct hinic_rq {struct hinic_wq* wq; } ;


 int atomic_read (int *) ;

int hinic_get_rq_free_wqebbs(struct hinic_rq *rq)
{
 struct hinic_wq *wq = rq->wq;

 return atomic_read(&wq->delta) - 1;
}
