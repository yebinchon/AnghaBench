
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si476x_core {int status_monitor; } ;


 int SI476X_STATUS_POLL_US ;
 int schedule_delayed_work (int *,int ) ;
 int usecs_to_jiffies (int ) ;

__attribute__((used)) static inline void si476x_core_schedule_polling_work(struct si476x_core *core)
{
 schedule_delayed_work(&core->status_monitor,
         usecs_to_jiffies(SI476X_STATUS_POLL_US));
}
