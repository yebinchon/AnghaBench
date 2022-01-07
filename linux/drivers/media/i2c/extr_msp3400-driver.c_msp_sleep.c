
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msp_state {int restart; int wq; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int TASK_INTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int current ;
 int kthread_should_stop () ;
 int msecs_to_jiffies (int) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int schedule_timeout_interruptible (int ) ;
 int set_current_state (int ) ;
 int try_to_freeze () ;
 int wait ;

int msp_sleep(struct msp_state *state, int timeout)
{
 DECLARE_WAITQUEUE(wait, current);

 add_wait_queue(&state->wq, &wait);
 if (!kthread_should_stop()) {
  if (timeout < 0) {
   set_current_state(TASK_INTERRUPTIBLE);
   schedule();
  } else {
   schedule_timeout_interruptible
      (msecs_to_jiffies(timeout));
  }
 }

 remove_wait_queue(&state->wq, &wait);
 try_to_freeze();
 return state->restart;
}
