
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt1 {int lock; int * kthread; TYPE_1__** adaps; } ;
struct TYPE_2__ {scalar_t__ users; } ;


 int PT1_NR_ADAPS ;
 int kthread_stop (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void pt1_stop_polling(struct pt1 *pt1)
{
 int i, count;

 mutex_lock(&pt1->lock);
 for (i = 0, count = 0; i < PT1_NR_ADAPS; i++)
  count += pt1->adaps[i]->users;

 if (count == 0 && pt1->kthread) {
  kthread_stop(pt1->kthread);
  pt1->kthread = ((void*)0);
 }
 mutex_unlock(&pt1->lock);
}
