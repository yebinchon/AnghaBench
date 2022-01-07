
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhine_private {int task_enable; int task_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void rhine_task_enable(struct rhine_private *rp)
{
 mutex_lock(&rp->task_lock);
 rp->task_enable = 1;
 mutex_unlock(&rp->task_lock);
}
