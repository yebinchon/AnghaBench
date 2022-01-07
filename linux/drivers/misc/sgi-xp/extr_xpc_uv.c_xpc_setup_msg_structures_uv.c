
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpc_channel_uv {int msg_slot_free_list; int send_msg_slots; int * cached_notify_gru_mq_desc; } ;
struct TYPE_2__ {struct xpc_channel_uv uv; } ;
struct xpc_channel {int flags; TYPE_1__ sn; } ;
struct gru_message_queue_desc {int dummy; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int DBUG_ON (int) ;
 int GFP_KERNEL ;
 int XPC_C_SETUP ;
 int kfree (int ) ;
 int * kmalloc (int,int ) ;
 int xpNoMemory ;
 int xpSuccess ;
 int xpc_allocate_recv_msg_slot_uv (struct xpc_channel*) ;
 int xpc_allocate_send_msg_slot_uv (struct xpc_channel*) ;
 int xpc_init_fifo_uv (int *) ;

__attribute__((used)) static enum xp_retval
xpc_setup_msg_structures_uv(struct xpc_channel *ch)
{
 static enum xp_retval ret;
 struct xpc_channel_uv *ch_uv = &ch->sn.uv;

 DBUG_ON(ch->flags & XPC_C_SETUP);

 ch_uv->cached_notify_gru_mq_desc = kmalloc(sizeof(struct
         gru_message_queue_desc),
         GFP_KERNEL);
 if (ch_uv->cached_notify_gru_mq_desc == ((void*)0))
  return xpNoMemory;

 ret = xpc_allocate_send_msg_slot_uv(ch);
 if (ret == xpSuccess) {

  ret = xpc_allocate_recv_msg_slot_uv(ch);
  if (ret != xpSuccess) {
   kfree(ch_uv->send_msg_slots);
   xpc_init_fifo_uv(&ch_uv->msg_slot_free_list);
  }
 }
 return ret;
}
