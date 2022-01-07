
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhine_private {int task_enable; int reset_task; int slow_event_task; int task_lock; } ;


 int cancel_work_sync (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void rhine_task_disable(struct rhine_private *rp)
{
 mutex_lock(&rp->task_lock);
 rp->task_enable = 0;
 mutex_unlock(&rp->task_lock);

 cancel_work_sync(&rp->slow_event_task);
 cancel_work_sync(&rp->reset_task);
}
