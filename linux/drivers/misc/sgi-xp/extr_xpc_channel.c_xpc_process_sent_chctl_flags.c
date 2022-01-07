
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union xpc_channel_ctl_flags {int* flags; int all_flags; } ;
typedef int u32 ;
struct xpc_partition {int nchannels; scalar_t__ act_state; struct xpc_channel* channels; } ;
struct xpc_channel {int flags; int lock; } ;
struct TYPE_2__ {int (* process_msg_chctl_flags ) (struct xpc_partition*,int) ;int (* get_chctl_all_flags ) (struct xpc_partition*) ;} ;


 int DBUG_ON (int) ;
 int XPC_C_CONNECTED ;
 int XPC_C_DISCONNECTING ;
 int XPC_C_OPENREQUEST ;
 int XPC_C_SETUP ;
 int XPC_MSG_CHCTL_FLAGS ;
 int XPC_OPENCLOSE_CHCTL_FLAGS ;
 scalar_t__ XPC_P_AS_DEACTIVATING ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct xpc_partition*) ;
 int stub2 (struct xpc_partition*,int) ;
 TYPE_1__ xpc_arch_ops ;
 int xpc_connect_channel (struct xpc_channel*) ;
 int xpc_process_disconnect (struct xpc_channel*,unsigned long*) ;
 int xpc_process_openclose_chctl_flags (struct xpc_partition*,int,int) ;

void
xpc_process_sent_chctl_flags(struct xpc_partition *part)
{
 unsigned long irq_flags;
 union xpc_channel_ctl_flags chctl;
 struct xpc_channel *ch;
 int ch_number;
 u32 ch_flags;

 chctl.all_flags = xpc_arch_ops.get_chctl_all_flags(part);
 for (ch_number = 0; ch_number < part->nchannels; ch_number++) {
  ch = &part->channels[ch_number];






  if (chctl.flags[ch_number] & XPC_OPENCLOSE_CHCTL_FLAGS) {
   xpc_process_openclose_chctl_flags(part, ch_number,
       chctl.flags[ch_number]);
  }

  ch_flags = ch->flags;

  if (ch_flags & XPC_C_DISCONNECTING) {
   spin_lock_irqsave(&ch->lock, irq_flags);
   xpc_process_disconnect(ch, &irq_flags);
   spin_unlock_irqrestore(&ch->lock, irq_flags);
   continue;
  }

  if (part->act_state == XPC_P_AS_DEACTIVATING)
   continue;

  if (!(ch_flags & XPC_C_CONNECTED)) {
   if (!(ch_flags & XPC_C_OPENREQUEST)) {
    DBUG_ON(ch_flags & XPC_C_SETUP);
    (void)xpc_connect_channel(ch);
   }
   continue;
  }







  if (chctl.flags[ch_number] & XPC_MSG_CHCTL_FLAGS)
   xpc_arch_ops.process_msg_chctl_flags(part, ch_number);
 }
}
