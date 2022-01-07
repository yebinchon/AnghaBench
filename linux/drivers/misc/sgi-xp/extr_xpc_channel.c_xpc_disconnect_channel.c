
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct xpc_channel {int flags; int lock; int msg_allocate_wq; int n_on_msg_allocate_wq; int idle_wq; int kthreads_idle; int number; int partid; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_2__ {int (* send_chctl_closerequest ) (struct xpc_channel*,unsigned long*) ;} ;


 int DBUG_ON (int) ;
 int XPC_C_CLOSEREQUEST ;
 int XPC_C_CONNECTED ;
 int XPC_C_CONNECTEDCALLOUT_MADE ;
 int XPC_C_CONNECTING ;
 int XPC_C_DISCONNECTED ;
 int XPC_C_DISCONNECTING ;
 int XPC_C_DISCONNECTINGCALLOUT ;
 int XPC_C_OPENREPLY ;
 int XPC_C_OPENREQUEST ;
 int XPC_C_ROPENREPLY ;
 int XPC_C_ROPENREQUEST ;
 int XPC_C_WASCONNECTED ;
 int XPC_SET_REASON (struct xpc_channel*,int,int const) ;
 scalar_t__ atomic_read (int *) ;
 int dev_dbg (int ,char*,int,int const,int ,int ) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct xpc_channel*,unsigned long*) ;
 int wake_up (int *) ;
 int wake_up_all (int *) ;
 TYPE_1__ xpc_arch_ops ;
 int xpc_chan ;
 int xpc_create_kthreads (struct xpc_channel*,int,int) ;

void
xpc_disconnect_channel(const int line, struct xpc_channel *ch,
         enum xp_retval reason, unsigned long *irq_flags)
{
 u32 channel_was_connected = (ch->flags & XPC_C_CONNECTED);

 lockdep_assert_held(&ch->lock);

 if (ch->flags & (XPC_C_DISCONNECTING | XPC_C_DISCONNECTED))
  return;

 DBUG_ON(!(ch->flags & (XPC_C_CONNECTING | XPC_C_CONNECTED)));

 dev_dbg(xpc_chan, "reason=%d, line=%d, partid=%d, channel=%d\n",
  reason, line, ch->partid, ch->number);

 XPC_SET_REASON(ch, reason, line);

 ch->flags |= (XPC_C_CLOSEREQUEST | XPC_C_DISCONNECTING);

 ch->flags &= ~(XPC_C_OPENREQUEST | XPC_C_OPENREPLY |
         XPC_C_ROPENREQUEST | XPC_C_ROPENREPLY |
         XPC_C_CONNECTING | XPC_C_CONNECTED);

 xpc_arch_ops.send_chctl_closerequest(ch, irq_flags);

 if (channel_was_connected)
  ch->flags |= XPC_C_WASCONNECTED;

 spin_unlock_irqrestore(&ch->lock, *irq_flags);


 if (atomic_read(&ch->kthreads_idle) > 0) {
  wake_up_all(&ch->idle_wq);

 } else if ((ch->flags & XPC_C_CONNECTEDCALLOUT_MADE) &&
     !(ch->flags & XPC_C_DISCONNECTINGCALLOUT)) {

  xpc_create_kthreads(ch, 1, 1);
 }


 if (atomic_read(&ch->n_on_msg_allocate_wq) > 0)
  wake_up(&ch->msg_allocate_wq);

 spin_lock_irqsave(&ch->lock, *irq_flags);
}
