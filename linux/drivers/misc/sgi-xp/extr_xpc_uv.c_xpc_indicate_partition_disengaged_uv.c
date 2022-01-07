
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_partition {int dummy; } ;
struct xpc_activate_mq_msg_uv {int dummy; } ;
typedef int msg ;


 int XPC_ACTIVATE_MQ_MSG_MARK_DISENGAGED_UV ;
 int xpc_send_activate_IRQ_part_uv (struct xpc_partition*,struct xpc_activate_mq_msg_uv*,int,int ) ;

__attribute__((used)) static void
xpc_indicate_partition_disengaged_uv(struct xpc_partition *part)
{
 struct xpc_activate_mq_msg_uv msg;

 xpc_send_activate_IRQ_part_uv(part, &msg, sizeof(msg),
          XPC_ACTIVATE_MQ_MSG_MARK_DISENGAGED_UV);
}
