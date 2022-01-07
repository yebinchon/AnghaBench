
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct xpc_partition {int nchannels_engaged; } ;
struct xpc_channel {size_t partid; int flags; scalar_t__ kthreads_idle_limit; int lock; int kthreads_assigned; int number; } ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {void (* indicate_partition_disengaged ) (struct xpc_partition*) ;int (* indicate_partition_engaged ) (struct xpc_partition*) ;} ;


 int BUG_ON (int) ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 int XPC_C_DISCONNECTING ;
 int XPC_C_DISCONNECTINGCALLOUT_MADE ;
 int XPC_DISCONNECT_CHANNEL (struct xpc_channel*,int ,unsigned long*) ;
 scalar_t__ XPC_PACK_ARGS (size_t,int ) ;
 scalar_t__ atomic_dec_return (int *) ;
 int atomic_inc_not_zero (int *) ;
 int atomic_inc_return (int *) ;
 scalar_t__ atomic_read (int *) ;
 struct task_struct* kthread_run (int ,void*,char*,size_t,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct xpc_partition*) ;
 int xpLackOfResources ;
 TYPE_1__ xpc_arch_ops ;
 int xpc_kthread_start ;
 int xpc_msgqueue_deref (struct xpc_channel*) ;
 int xpc_msgqueue_ref (struct xpc_channel*) ;
 int xpc_part_deref (struct xpc_partition*) ;
 int xpc_part_ref (struct xpc_partition*) ;
 struct xpc_partition* xpc_partitions ;

void
xpc_create_kthreads(struct xpc_channel *ch, int needed,
      int ignore_disconnecting)
{
 unsigned long irq_flags;
 u64 args = XPC_PACK_ARGS(ch->partid, ch->number);
 struct xpc_partition *part = &xpc_partitions[ch->partid];
 struct task_struct *kthread;
 void (*indicate_partition_disengaged) (struct xpc_partition *) =
  xpc_arch_ops.indicate_partition_disengaged;

 while (needed-- > 0) {






  if (ignore_disconnecting) {
   if (!atomic_inc_not_zero(&ch->kthreads_assigned)) {

    BUG_ON(!(ch->flags &
      XPC_C_DISCONNECTINGCALLOUT_MADE));
    break;
   }

  } else if (ch->flags & XPC_C_DISCONNECTING) {
   break;

  } else if (atomic_inc_return(&ch->kthreads_assigned) == 1 &&
      atomic_inc_return(&part->nchannels_engaged) == 1) {
   xpc_arch_ops.indicate_partition_engaged(part);
  }
  (void)xpc_part_ref(part);
  xpc_msgqueue_ref(ch);

  kthread = kthread_run(xpc_kthread_start, (void *)args,
          "xpc%02dc%d", ch->partid, ch->number);
  if (IS_ERR(kthread)) {
   if (atomic_dec_return(&ch->kthreads_assigned) == 0 &&
       atomic_dec_return(&part->nchannels_engaged) == 0) {
    indicate_partition_disengaged(part);
   }
   xpc_msgqueue_deref(ch);
   xpc_part_deref(part);

   if (atomic_read(&ch->kthreads_assigned) <
       ch->kthreads_idle_limit) {





    spin_lock_irqsave(&ch->lock, irq_flags);
    XPC_DISCONNECT_CHANNEL(ch, xpLackOfResources,
             &irq_flags);
    spin_unlock_irqrestore(&ch->lock, irq_flags);
   }
   break;
  }
 }
}
