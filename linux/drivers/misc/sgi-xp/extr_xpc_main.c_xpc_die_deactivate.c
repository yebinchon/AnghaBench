
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpc_partition {scalar_t__ act_state; } ;
struct TYPE_2__ {int (* any_partition_engaged ) () ;scalar_t__ (* partition_engaged ) (short) ;int (* indicate_partition_disengaged ) (struct xpc_partition*) ;int (* request_partition_deactivation ) (struct xpc_partition*) ;int (* disallow_all_hbs ) () ;} ;


 int XPC_DEACTIVATE_PRINTMSG_INTERVAL ;
 scalar_t__ XPC_P_AS_INACTIVE ;
 scalar_t__ cmpxchg (int *,int ,int) ;
 int dev_info (int ,char*,...) ;
 int stub1 () ;
 scalar_t__ stub2 (short) ;
 int stub3 (struct xpc_partition*) ;
 int stub4 (struct xpc_partition*) ;
 int stub5 () ;
 scalar_t__ stub6 (short) ;
 int udelay (int) ;
 short xp_max_npartitions ;
 TYPE_1__ xpc_arch_ops ;
 int xpc_die_disconnecting ;
 int xpc_disengage_timelimit ;
 int xpc_exiting ;
 int xpc_part ;
 struct xpc_partition* xpc_partitions ;

__attribute__((used)) static void
xpc_die_deactivate(void)
{
 struct xpc_partition *part;
 short partid;
 int any_engaged;
 long keep_waiting;
 long wait_to_print;

 if (cmpxchg(&xpc_die_disconnecting, 0, 1))
  return;


 xpc_exiting = 1;

 xpc_arch_ops.disallow_all_hbs();

 for (partid = 0; partid < xp_max_npartitions; partid++) {
  part = &xpc_partitions[partid];

  if (xpc_arch_ops.partition_engaged(partid) ||
      part->act_state != XPC_P_AS_INACTIVE) {
   xpc_arch_ops.request_partition_deactivation(part);
   xpc_arch_ops.indicate_partition_disengaged(part);
  }
 }
 keep_waiting = xpc_disengage_timelimit * 1000 * 5;
 wait_to_print = XPC_DEACTIVATE_PRINTMSG_INTERVAL * 1000 * 5;

 while (1) {
  any_engaged = xpc_arch_ops.any_partition_engaged();
  if (!any_engaged) {
   dev_info(xpc_part, "all partitions have deactivated\n");
   break;
  }

  if (!keep_waiting--) {
   for (partid = 0; partid < xp_max_npartitions;
        partid++) {
    if (xpc_arch_ops.partition_engaged(partid)) {
     dev_info(xpc_part, "deactivate from "
       "remote partition %d timed "
       "out\n", partid);
    }
   }
   break;
  }

  if (!wait_to_print--) {
   dev_info(xpc_part, "waiting for remote partitions to "
     "deactivate, timeout in %ld seconds\n",
     keep_waiting / (1000 * 5));
   wait_to_print = XPC_DEACTIVATE_PRINTMSG_INTERVAL *
       1000 * 5;
  }

  udelay(200);
 }
}
