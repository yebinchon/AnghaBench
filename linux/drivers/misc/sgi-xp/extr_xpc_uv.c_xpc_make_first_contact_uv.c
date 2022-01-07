
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ remote_act_state; } ;
struct TYPE_4__ {TYPE_1__ uv; } ;
struct xpc_partition {scalar_t__ act_state; int reason; TYPE_2__ sn; } ;
struct xpc_activate_mq_msg_uv {int dummy; } ;
typedef int msg ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int XPC_ACTIVATE_MQ_MSG_SYNC_ACT_STATE_UV ;
 int XPC_PARTID (struct xpc_partition*) ;
 scalar_t__ XPC_P_AS_ACTIVATING ;
 scalar_t__ XPC_P_AS_ACTIVE ;
 scalar_t__ XPC_P_AS_DEACTIVATING ;
 int dev_dbg (int ,char*,int ) ;
 int msleep_interruptible (int) ;
 int xpSuccess ;
 int xpc_part ;
 int xpc_send_activate_IRQ_part_uv (struct xpc_partition*,struct xpc_activate_mq_msg_uv*,int,int ) ;

__attribute__((used)) static enum xp_retval
xpc_make_first_contact_uv(struct xpc_partition *part)
{
 struct xpc_activate_mq_msg_uv msg;






 xpc_send_activate_IRQ_part_uv(part, &msg, sizeof(msg),
          XPC_ACTIVATE_MQ_MSG_SYNC_ACT_STATE_UV);

 while (!((part->sn.uv.remote_act_state == XPC_P_AS_ACTIVATING) ||
   (part->sn.uv.remote_act_state == XPC_P_AS_ACTIVE))) {

  dev_dbg(xpc_part, "waiting to make first contact with "
   "partition %d\n", XPC_PARTID(part));


  (void)msleep_interruptible(250);

  if (part->act_state == XPC_P_AS_DEACTIVATING)
   return part->reason;
 }

 return xpSuccess;
}
