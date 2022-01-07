
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpc_partition {int dummy; } ;
struct xpc_channel {int flags; scalar_t__ kthreads_idle_limit; int kthreads_idle; int idle_wq; } ;
struct TYPE_2__ {int (* n_of_deliverable_payloads ) (struct xpc_channel*) ;} ;


 int XPC_C_DISCONNECTING ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_inc_return (int *) ;
 int dev_dbg (int ,char*) ;
 int wait_event_interruptible_exclusive (int ,int) ;
 TYPE_1__ xpc_arch_ops ;
 int xpc_chan ;
 int xpc_deliver_payload (struct xpc_channel*) ;

__attribute__((used)) static void
xpc_kthread_waitmsgs(struct xpc_partition *part, struct xpc_channel *ch)
{
 int (*n_of_deliverable_payloads) (struct xpc_channel *) =
  xpc_arch_ops.n_of_deliverable_payloads;

 do {


  while (n_of_deliverable_payloads(ch) > 0 &&
         !(ch->flags & XPC_C_DISCONNECTING)) {
   xpc_deliver_payload(ch);
  }

  if (atomic_inc_return(&ch->kthreads_idle) >
      ch->kthreads_idle_limit) {

   atomic_dec(&ch->kthreads_idle);
   break;
  }

  dev_dbg(xpc_chan, "idle kthread calling "
   "wait_event_interruptible_exclusive()\n");

  (void)wait_event_interruptible_exclusive(ch->idle_wq,
    (n_of_deliverable_payloads(ch) > 0 ||
     (ch->flags & XPC_C_DISCONNECTING)));

  atomic_dec(&ch->kthreads_idle);

 } while (!(ch->flags & XPC_C_DISCONNECTING));
}
