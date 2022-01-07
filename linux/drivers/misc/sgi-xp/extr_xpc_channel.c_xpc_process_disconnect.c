
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int* flags; } ;
struct xpc_partition {scalar_t__ act_state; int chctl_lock; TYPE_1__ chctl; int nchannels_active; } ;
struct xpc_channel {size_t partid; int flags; size_t number; int delayed_chctl_flags; int wdisconnect_wait; int reason; scalar_t__ kthreads_idle_limit; scalar_t__ kthreads_assigned_limit; scalar_t__ remote_nentries; scalar_t__ local_nentries; scalar_t__ entry_size; int * key; int * func; int n_to_notify; int lock; int references; int kthreads_assigned; } ;
struct TYPE_4__ {int (* teardown_msg_structures ) (struct xpc_channel*) ;int (* notify_senders_of_disconnect ) (struct xpc_channel*) ;int (* send_chctl_closereply ) (struct xpc_channel*,unsigned long*) ;scalar_t__ (* partition_engaged ) (size_t) ;} ;


 int DBUG_ON (int) ;
 int XPC_C_CLOSEREPLY ;
 int XPC_C_CLOSEREQUEST ;
 int XPC_C_CONNECTEDCALLOUT_MADE ;
 int XPC_C_DISCONNECTED ;
 int XPC_C_DISCONNECTING ;
 int XPC_C_DISCONNECTINGCALLOUT_MADE ;
 int XPC_C_RCLOSEREPLY ;
 int XPC_C_RCLOSEREQUEST ;
 int XPC_C_WASCONNECTED ;
 int XPC_C_WDISCONNECT ;
 scalar_t__ XPC_P_AS_DEACTIVATING ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int complete (int *) ;
 int dev_info (int ,char*,size_t,size_t,int ) ;
 int lockdep_assert_held (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ stub1 (size_t) ;
 int stub2 (struct xpc_channel*,unsigned long*) ;
 int stub3 (struct xpc_channel*) ;
 int stub4 (struct xpc_channel*) ;
 int xpDisconnected ;
 TYPE_2__ xpc_arch_ops ;
 int xpc_chan ;
 int xpc_disconnect_callout (struct xpc_channel*,int ) ;
 struct xpc_partition* xpc_partitions ;

__attribute__((used)) static void
xpc_process_disconnect(struct xpc_channel *ch, unsigned long *irq_flags)
{
 struct xpc_partition *part = &xpc_partitions[ch->partid];
 u32 channel_was_connected = (ch->flags & XPC_C_WASCONNECTED);

 lockdep_assert_held(&ch->lock);

 if (!(ch->flags & XPC_C_DISCONNECTING))
  return;

 DBUG_ON(!(ch->flags & XPC_C_CLOSEREQUEST));



 if (atomic_read(&ch->kthreads_assigned) > 0 ||
     atomic_read(&ch->references) > 0) {
  return;
 }
 DBUG_ON((ch->flags & XPC_C_CONNECTEDCALLOUT_MADE) &&
  !(ch->flags & XPC_C_DISCONNECTINGCALLOUT_MADE));

 if (part->act_state == XPC_P_AS_DEACTIVATING) {

  if (xpc_arch_ops.partition_engaged(ch->partid))
   return;

 } else {



  if (!(ch->flags & XPC_C_RCLOSEREQUEST))
   return;

  if (!(ch->flags & XPC_C_CLOSEREPLY)) {
   ch->flags |= XPC_C_CLOSEREPLY;
   xpc_arch_ops.send_chctl_closereply(ch, irq_flags);
  }

  if (!(ch->flags & XPC_C_RCLOSEREPLY))
   return;
 }


 if (atomic_read(&ch->n_to_notify) > 0) {

  xpc_arch_ops.notify_senders_of_disconnect(ch);
 }



 if (ch->flags & XPC_C_DISCONNECTINGCALLOUT_MADE) {
  spin_unlock_irqrestore(&ch->lock, *irq_flags);
  xpc_disconnect_callout(ch, xpDisconnected);
  spin_lock_irqsave(&ch->lock, *irq_flags);
 }

 DBUG_ON(atomic_read(&ch->n_to_notify) != 0);


 xpc_arch_ops.teardown_msg_structures(ch);

 ch->func = ((void*)0);
 ch->key = ((void*)0);
 ch->entry_size = 0;
 ch->local_nentries = 0;
 ch->remote_nentries = 0;
 ch->kthreads_assigned_limit = 0;
 ch->kthreads_idle_limit = 0;







 ch->flags = (XPC_C_DISCONNECTED | (ch->flags & XPC_C_WDISCONNECT));

 atomic_dec(&part->nchannels_active);

 if (channel_was_connected) {
  dev_info(xpc_chan, "channel %d to partition %d disconnected, "
    "reason=%d\n", ch->number, ch->partid, ch->reason);
 }

 if (ch->flags & XPC_C_WDISCONNECT) {

  complete(&ch->wdisconnect_wait);
 } else if (ch->delayed_chctl_flags) {
  if (part->act_state != XPC_P_AS_DEACTIVATING) {

   spin_lock(&part->chctl_lock);
   part->chctl.flags[ch->number] |=
       ch->delayed_chctl_flags;
   spin_unlock(&part->chctl_lock);
  }
  ch->delayed_chctl_flags = 0;
 }
}
