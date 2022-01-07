
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_partition {int dummy; } ;
struct xpc_channel {size_t partid; int lock; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int XPC_DEACTIVATE_PARTITION (struct xpc_partition*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int xpSuccess ;
 struct xpc_partition* xpc_partitions ;
 int xpc_send_activate_IRQ_uv (struct xpc_partition*,void*,size_t,int) ;

__attribute__((used)) static void
xpc_send_activate_IRQ_ch_uv(struct xpc_channel *ch, unsigned long *irq_flags,
    void *msg, size_t msg_size, int msg_type)
{
 struct xpc_partition *part = &xpc_partitions[ch->partid];
 enum xp_retval ret;

 ret = xpc_send_activate_IRQ_uv(part, msg, msg_size, msg_type);
 if (unlikely(ret != xpSuccess)) {
  if (irq_flags != ((void*)0))
   spin_unlock_irqrestore(&ch->lock, *irq_flags);

  XPC_DEACTIVATE_PARTITION(part, ret);

  if (irq_flags != ((void*)0))
   spin_lock_irqsave(&ch->lock, *irq_flags);
 }
}
