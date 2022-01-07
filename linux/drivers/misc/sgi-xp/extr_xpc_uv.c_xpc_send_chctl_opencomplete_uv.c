
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_channel {int number; } ;
struct xpc_activate_mq_msg_chctl_opencomplete_uv {int ch_number; } ;
typedef int msg ;


 int XPC_ACTIVATE_MQ_MSG_CHCTL_OPENCOMPLETE_UV ;
 int xpc_send_activate_IRQ_ch_uv (struct xpc_channel*,unsigned long*,struct xpc_activate_mq_msg_chctl_opencomplete_uv*,int,int ) ;

__attribute__((used)) static void
xpc_send_chctl_opencomplete_uv(struct xpc_channel *ch, unsigned long *irq_flags)
{
 struct xpc_activate_mq_msg_chctl_opencomplete_uv msg;

 msg.ch_number = ch->number;
 xpc_send_activate_IRQ_ch_uv(ch, irq_flags, &msg, sizeof(msg),
        XPC_ACTIVATE_MQ_MSG_CHCTL_OPENCOMPLETE_UV);
}
