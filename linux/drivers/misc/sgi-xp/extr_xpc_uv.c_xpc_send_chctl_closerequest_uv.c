
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_channel {int reason; int number; } ;
struct xpc_activate_mq_msg_chctl_closerequest_uv {int reason; int ch_number; } ;
typedef int msg ;


 int XPC_ACTIVATE_MQ_MSG_CHCTL_CLOSEREQUEST_UV ;
 int xpc_send_activate_IRQ_ch_uv (struct xpc_channel*,unsigned long*,struct xpc_activate_mq_msg_chctl_closerequest_uv*,int,int ) ;

__attribute__((used)) static void
xpc_send_chctl_closerequest_uv(struct xpc_channel *ch, unsigned long *irq_flags)
{
 struct xpc_activate_mq_msg_chctl_closerequest_uv msg;

 msg.ch_number = ch->number;
 msg.reason = ch->reason;
 xpc_send_activate_IRQ_ch_uv(ch, irq_flags, &msg, sizeof(msg),
        XPC_ACTIVATE_MQ_MSG_CHCTL_CLOSEREQUEST_UV);
}
