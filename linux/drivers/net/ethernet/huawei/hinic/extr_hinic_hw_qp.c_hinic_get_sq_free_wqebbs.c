
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_wq {int delta; } ;
struct hinic_sq {struct hinic_wq* wq; } ;


 int atomic_read (int *) ;

int hinic_get_sq_free_wqebbs(struct hinic_sq *sq)
{
 struct hinic_wq *wq = sq->wq;

 return atomic_read(&wq->delta) - 1;
}
