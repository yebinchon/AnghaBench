
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TASK_INTERRUPTIBLE ;
 int TASK_UNINTERRUPTIBLE ;
 int current ;
 int msecs_to_jiffies (unsigned int) ;
 int schedule_timeout (int) ;
 int set_current_state (int ) ;
 int signal_pending (int ) ;

int ivtv_msleep_timeout(unsigned int msecs, int intr)
{
 int timeout = msecs_to_jiffies(msecs);

 do {
  set_current_state(intr ? TASK_INTERRUPTIBLE : TASK_UNINTERRUPTIBLE);
  timeout = schedule_timeout(timeout);
  if (intr) {
   int ret = signal_pending(current);

   if (ret)
    return ret;
  }
 } while (timeout);
 return 0;
}
