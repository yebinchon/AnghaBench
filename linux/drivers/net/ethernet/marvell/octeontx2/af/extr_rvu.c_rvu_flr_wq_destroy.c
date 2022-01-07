
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvu {int * flr_wq; } ;


 int destroy_workqueue (int *) ;
 int flush_workqueue (int *) ;

__attribute__((used)) static void rvu_flr_wq_destroy(struct rvu *rvu)
{
 if (rvu->flr_wq) {
  flush_workqueue(rvu->flr_wq);
  destroy_workqueue(rvu->flr_wq);
  rvu->flr_wq = ((void*)0);
 }
}
