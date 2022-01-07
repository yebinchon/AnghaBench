
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct xpc_partition {int nchannels_engaged; struct xpc_channel* channels; } ;
struct xpc_channel {int flags; int kthreads_assigned; int lock; } ;
struct TYPE_2__ {int (* n_of_deliverable_payloads ) (struct xpc_channel*) ;int (* indicate_partition_disengaged ) (struct xpc_partition*) ;} ;


 int XPC_C_CONNECTEDCALLOUT ;
 int XPC_C_CONNECTEDCALLOUT_MADE ;
 int XPC_C_DISCONNECTING ;
 int XPC_C_DISCONNECTINGCALLOUT ;
 int XPC_C_DISCONNECTINGCALLOUT_MADE ;
 short XPC_UNPACK_ARG1 (void*) ;
 size_t XPC_UNPACK_ARG2 (void*) ;
 scalar_t__ atomic_dec_return (int *) ;
 int dev_dbg (int ,char*,short,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct xpc_partition*) ;
 int xpDisconnecting ;
 int xpc_activate_kthreads (struct xpc_channel*,int) ;
 TYPE_1__ xpc_arch_ops ;
 int xpc_chan ;
 int xpc_connected_callout (struct xpc_channel*) ;
 int xpc_disconnect_callout (struct xpc_channel*,int ) ;
 int xpc_kthread_waitmsgs (struct xpc_partition*,struct xpc_channel*) ;
 int xpc_msgqueue_deref (struct xpc_channel*) ;
 int xpc_part_deref (struct xpc_partition*) ;
 struct xpc_partition* xpc_partitions ;

__attribute__((used)) static int
xpc_kthread_start(void *args)
{
 short partid = XPC_UNPACK_ARG1(args);
 u16 ch_number = XPC_UNPACK_ARG2(args);
 struct xpc_partition *part = &xpc_partitions[partid];
 struct xpc_channel *ch;
 int n_needed;
 unsigned long irq_flags;
 int (*n_of_deliverable_payloads) (struct xpc_channel *) =
  xpc_arch_ops.n_of_deliverable_payloads;

 dev_dbg(xpc_chan, "kthread starting, partid=%d, channel=%d\n",
  partid, ch_number);

 ch = &part->channels[ch_number];

 if (!(ch->flags & XPC_C_DISCONNECTING)) {



  spin_lock_irqsave(&ch->lock, irq_flags);
  if (!(ch->flags & XPC_C_CONNECTEDCALLOUT)) {
   ch->flags |= XPC_C_CONNECTEDCALLOUT;
   spin_unlock_irqrestore(&ch->lock, irq_flags);

   xpc_connected_callout(ch);

   spin_lock_irqsave(&ch->lock, irq_flags);
   ch->flags |= XPC_C_CONNECTEDCALLOUT_MADE;
   spin_unlock_irqrestore(&ch->lock, irq_flags);
   n_needed = n_of_deliverable_payloads(ch) - 1;
   if (n_needed > 0 && !(ch->flags & XPC_C_DISCONNECTING))
    xpc_activate_kthreads(ch, n_needed);

  } else {
   spin_unlock_irqrestore(&ch->lock, irq_flags);
  }

  xpc_kthread_waitmsgs(part, ch);
 }



 spin_lock_irqsave(&ch->lock, irq_flags);
 if ((ch->flags & XPC_C_CONNECTEDCALLOUT_MADE) &&
     !(ch->flags & XPC_C_DISCONNECTINGCALLOUT)) {
  ch->flags |= XPC_C_DISCONNECTINGCALLOUT;
  spin_unlock_irqrestore(&ch->lock, irq_flags);

  xpc_disconnect_callout(ch, xpDisconnecting);

  spin_lock_irqsave(&ch->lock, irq_flags);
  ch->flags |= XPC_C_DISCONNECTINGCALLOUT_MADE;
 }
 spin_unlock_irqrestore(&ch->lock, irq_flags);

 if (atomic_dec_return(&ch->kthreads_assigned) == 0 &&
     atomic_dec_return(&part->nchannels_engaged) == 0) {
  xpc_arch_ops.indicate_partition_disengaged(part);
 }

 xpc_msgqueue_deref(ch);

 dev_dbg(xpc_chan, "kthread exiting, partid=%d, channel=%d\n",
  partid, ch_number);

 xpc_part_deref(part);
 return 0;
}
