
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct genwqe_dev {int * health_thread; } ;


 int EIO ;
 int genwqe_health_thread_running (struct genwqe_dev*) ;
 int kthread_stop (int *) ;

__attribute__((used)) static int genwqe_health_check_stop(struct genwqe_dev *cd)
{
 int rc;

 if (!genwqe_health_thread_running(cd))
  return -EIO;

 rc = kthread_stop(cd->health_thread);
 cd->health_thread = ((void*)0);
 return 0;
}
