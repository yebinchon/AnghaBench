
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad {scalar_t__ bar0; int * work_q; } ;


 int destroy_workqueue (int *) ;
 int flush_workqueue (int *) ;
 int iounmap (scalar_t__) ;

__attribute__((used)) static void
bnad_uninit(struct bnad *bnad)
{
 if (bnad->work_q) {
  flush_workqueue(bnad->work_q);
  destroy_workqueue(bnad->work_q);
  bnad->work_q = ((void*)0);
 }

 if (bnad->bar0)
  iounmap(bnad->bar0);
}
