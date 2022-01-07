
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ remote_act_state; } ;
struct TYPE_4__ {TYPE_1__ uv; } ;
struct xpc_partition {int reason; TYPE_2__ sn; } ;
struct xpc_activate_mq_msg_deactivate_req_uv {int reason; } ;
typedef int msg ;


 int XPC_ACTIVATE_MQ_MSG_DEACTIVATE_REQ_UV ;
 scalar_t__ XPC_P_AS_DEACTIVATING ;
 scalar_t__ XPC_P_AS_INACTIVE ;
 int xpc_send_activate_IRQ_part_uv (struct xpc_partition*,struct xpc_activate_mq_msg_deactivate_req_uv*,int,int ) ;

__attribute__((used)) static void
xpc_request_partition_deactivation_uv(struct xpc_partition *part)
{
 struct xpc_activate_mq_msg_deactivate_req_uv msg;





 if (part->sn.uv.remote_act_state != XPC_P_AS_DEACTIVATING &&
     part->sn.uv.remote_act_state != XPC_P_AS_INACTIVE) {

  msg.reason = part->reason;
  xpc_send_activate_IRQ_part_uv(part, &msg, sizeof(msg),
      XPC_ACTIVATE_MQ_MSG_DEACTIVATE_REQ_UV);
 }
}
