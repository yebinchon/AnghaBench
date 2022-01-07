
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct si476x_core {int is_alive; } ;


 struct si476x_core* SI476X_WORK_TO_CORE (struct work_struct*) ;
 scalar_t__ atomic_read (int *) ;
 int si476x_core_get_and_signal_status (struct si476x_core*) ;
 int si476x_core_schedule_polling_work (struct si476x_core*) ;

__attribute__((used)) static void si476x_core_poll_loop(struct work_struct *work)
{
 struct si476x_core *core = SI476X_WORK_TO_CORE(work);

 si476x_core_get_and_signal_status(core);

 if (atomic_read(&core->is_alive))
  si476x_core_schedule_polling_work(core);
}
