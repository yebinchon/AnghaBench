
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt1 {int lock; int * kthread; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int * kthread_run (int ,struct pt1*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pt1_thread ;

__attribute__((used)) static int pt1_start_polling(struct pt1 *pt1)
{
 int ret = 0;

 mutex_lock(&pt1->lock);
 if (!pt1->kthread) {
  pt1->kthread = kthread_run(pt1_thread, pt1, "earth-pt1");
  if (IS_ERR(pt1->kthread)) {
   ret = PTR_ERR(pt1->kthread);
   pt1->kthread = ((void*)0);
  }
 }
 mutex_unlock(&pt1->lock);
 return ret;
}
