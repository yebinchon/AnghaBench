
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpc_partition {scalar_t__ act_state; int disengage_timer; scalar_t__ disengage_timeout; } ;
struct TYPE_2__ {int (* cancel_partition_deactivation_request ) (struct xpc_partition*) ;int (* assume_partition_disengaged ) (short) ;int (* partition_engaged ) (short) ;} ;


 int DBUG_ON (int) ;
 short XPC_PARTID (struct xpc_partition*) ;
 scalar_t__ XPC_P_AS_DEACTIVATING ;
 scalar_t__ XPC_P_AS_INACTIVE ;
 int del_singleshot_timer_sync (int *) ;
 int dev_info (int ,char*,short) ;
 int in_interrupt () ;
 int stub1 (short) ;
 int stub2 (short) ;
 int stub3 (struct xpc_partition*) ;
 scalar_t__ time_is_after_jiffies (scalar_t__) ;
 TYPE_1__ xpc_arch_ops ;
 int xpc_disengage_timedout ;
 int xpc_part ;
 int xpc_wakeup_channel_mgr (struct xpc_partition*) ;

int
xpc_partition_disengaged(struct xpc_partition *part)
{
 short partid = XPC_PARTID(part);
 int disengaged;

 disengaged = !xpc_arch_ops.partition_engaged(partid);
 if (part->disengage_timeout) {
  if (!disengaged) {
   if (time_is_after_jiffies(part->disengage_timeout)) {

    return 0;
   }






   dev_info(xpc_part, "deactivate request to remote "
     "partition %d timed out\n", partid);
   xpc_disengage_timedout = 1;
   xpc_arch_ops.assume_partition_disengaged(partid);
   disengaged = 1;
  }
  part->disengage_timeout = 0;


  if (!in_interrupt())
   del_singleshot_timer_sync(&part->disengage_timer);

  DBUG_ON(part->act_state != XPC_P_AS_DEACTIVATING &&
   part->act_state != XPC_P_AS_INACTIVE);
  if (part->act_state != XPC_P_AS_INACTIVE)
   xpc_wakeup_channel_mgr(part);

  xpc_arch_ops.cancel_partition_deactivation_request(part);
 }
 return disengaged;
}
