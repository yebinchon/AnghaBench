
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_channel {int flags; scalar_t__ reason; int n_on_msg_allocate_wq; int msg_allocate_wq; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int DBUG_ON (int) ;
 int DEFINE_WAIT (int ) ;
 int TASK_INTERRUPTIBLE ;
 int XPC_C_DISCONNECTING ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int finish_wait (int *,int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule_timeout (int) ;
 int wait ;
 scalar_t__ xpInterrupted ;
 int xpTimeout ;

enum xp_retval
xpc_allocate_msg_wait(struct xpc_channel *ch)
{
 enum xp_retval ret;
 DEFINE_WAIT(wait);

 if (ch->flags & XPC_C_DISCONNECTING) {
  DBUG_ON(ch->reason == xpInterrupted);
  return ch->reason;
 }

 atomic_inc(&ch->n_on_msg_allocate_wq);
 prepare_to_wait(&ch->msg_allocate_wq, &wait, TASK_INTERRUPTIBLE);
 ret = schedule_timeout(1);
 finish_wait(&ch->msg_allocate_wq, &wait);
 atomic_dec(&ch->n_on_msg_allocate_wq);

 if (ch->flags & XPC_C_DISCONNECTING) {
  ret = ch->reason;
  DBUG_ON(ch->reason == xpInterrupted);
 } else if (ret == 0) {
  ret = xpTimeout;
 } else {
  ret = xpInterrupted;
 }

 return ret;
}
