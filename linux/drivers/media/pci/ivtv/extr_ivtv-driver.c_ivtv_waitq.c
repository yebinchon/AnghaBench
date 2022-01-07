
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;


 int DEFINE_WAIT (int ) ;
 int EINTR ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 scalar_t__ signal_pending (int ) ;
 int wait ;

int ivtv_waitq(wait_queue_head_t *waitq)
{
 DEFINE_WAIT(wait);

 prepare_to_wait(waitq, &wait, TASK_INTERRUPTIBLE);
 schedule();
 finish_wait(waitq, &wait);
 return signal_pending(current) ? -EINTR : 0;
}
