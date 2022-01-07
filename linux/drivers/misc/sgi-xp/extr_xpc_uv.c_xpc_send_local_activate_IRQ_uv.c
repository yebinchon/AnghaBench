
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpc_partition_uv {int act_state_req; } ;
struct TYPE_2__ {struct xpc_partition_uv uv; } ;
struct xpc_partition {TYPE_1__ sn; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;
 int xpc_activate_IRQ_rcvd ;
 int xpc_activate_IRQ_rcvd_lock ;
 int xpc_activate_IRQ_wq ;

__attribute__((used)) static void
xpc_send_local_activate_IRQ_uv(struct xpc_partition *part, int act_state_req)
{
 unsigned long irq_flags;
 struct xpc_partition_uv *part_uv = &part->sn.uv;







 spin_lock_irqsave(&xpc_activate_IRQ_rcvd_lock, irq_flags);
 if (part_uv->act_state_req == 0)
  xpc_activate_IRQ_rcvd++;
 part_uv->act_state_req = act_state_req;
 spin_unlock_irqrestore(&xpc_activate_IRQ_rcvd_lock, irq_flags);

 wake_up_interruptible(&xpc_activate_IRQ_wq);
}
