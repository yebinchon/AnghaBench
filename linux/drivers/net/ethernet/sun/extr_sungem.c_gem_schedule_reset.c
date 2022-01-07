
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gem {int reset_task_pending; int reset_task; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void gem_schedule_reset(struct gem *gp)
{
 gp->reset_task_pending = 1;
 schedule_work(&gp->reset_task);
}
