
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * be_err_recovery_workq ;
 int destroy_workqueue (int *) ;
 int flush_workqueue (int *) ;

__attribute__((used)) static void be_destroy_err_recovery_workq(void)
{
 if (!be_err_recovery_workq)
  return;

 flush_workqueue(be_err_recovery_workq);
 destroy_workqueue(be_err_recovery_workq);
 be_err_recovery_workq = ((void*)0);
}
