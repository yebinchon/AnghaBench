
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpc_channel {int flags; int partid; int number; int lock; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_2__ {int (* setup_msg_structures ) (struct xpc_channel*) ;int (* send_chctl_opencomplete ) (struct xpc_channel*,unsigned long*) ;int (* send_chctl_openreply ) (struct xpc_channel*,unsigned long*) ;} ;


 int DBUG_ON (int) ;
 int XPC_C_CONNECTED ;
 int XPC_C_CONNECTING ;
 int XPC_C_DISCONNECTING ;
 int XPC_C_OPENCOMPLETE ;
 int XPC_C_OPENREPLY ;
 int XPC_C_OPENREQUEST ;
 int XPC_C_ROPENCOMPLETE ;
 int XPC_C_ROPENREPLY ;
 int XPC_C_ROPENREQUEST ;
 int XPC_C_SETUP ;
 int XPC_DISCONNECT_CHANNEL (struct xpc_channel*,int,unsigned long*) ;
 int dev_info (int ,char*,int ,int ) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct xpc_channel*) ;
 int stub2 (struct xpc_channel*,unsigned long*) ;
 int stub3 (struct xpc_channel*,unsigned long*) ;
 int xpSuccess ;
 TYPE_1__ xpc_arch_ops ;
 int xpc_chan ;

__attribute__((used)) static void
xpc_process_connect(struct xpc_channel *ch, unsigned long *irq_flags)
{
 enum xp_retval ret;

 lockdep_assert_held(&ch->lock);

 if (!(ch->flags & XPC_C_OPENREQUEST) ||
     !(ch->flags & XPC_C_ROPENREQUEST)) {

  return;
 }
 DBUG_ON(!(ch->flags & XPC_C_CONNECTING));

 if (!(ch->flags & XPC_C_SETUP)) {
  spin_unlock_irqrestore(&ch->lock, *irq_flags);
  ret = xpc_arch_ops.setup_msg_structures(ch);
  spin_lock_irqsave(&ch->lock, *irq_flags);

  if (ret != xpSuccess)
   XPC_DISCONNECT_CHANNEL(ch, ret, irq_flags);
  else
   ch->flags |= XPC_C_SETUP;

  if (ch->flags & XPC_C_DISCONNECTING)
   return;
 }

 if (!(ch->flags & XPC_C_OPENREPLY)) {
  ch->flags |= XPC_C_OPENREPLY;
  xpc_arch_ops.send_chctl_openreply(ch, irq_flags);
 }

 if (!(ch->flags & XPC_C_ROPENREPLY))
  return;

 if (!(ch->flags & XPC_C_OPENCOMPLETE)) {
  ch->flags |= (XPC_C_OPENCOMPLETE | XPC_C_CONNECTED);
  xpc_arch_ops.send_chctl_opencomplete(ch, irq_flags);
 }

 if (!(ch->flags & XPC_C_ROPENCOMPLETE))
  return;

 dev_info(xpc_chan, "channel %d to partition %d connected\n",
   ch->number, ch->partid);

 ch->flags = (XPC_C_CONNECTED | XPC_C_SETUP);
}
