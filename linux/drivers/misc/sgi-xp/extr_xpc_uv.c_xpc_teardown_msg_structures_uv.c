
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpc_channel_uv {int * recv_msg_slots; int recv_msg_list; int * send_msg_slots; int msg_slot_free_list; int * cached_notify_gru_mq_desc; } ;
struct TYPE_2__ {struct xpc_channel_uv uv; } ;
struct xpc_channel {int flags; int lock; TYPE_1__ sn; } ;


 int XPC_C_SETUP ;
 int kfree (int *) ;
 int lockdep_assert_held (int *) ;
 int xpc_init_fifo_uv (int *) ;

__attribute__((used)) static void
xpc_teardown_msg_structures_uv(struct xpc_channel *ch)
{
 struct xpc_channel_uv *ch_uv = &ch->sn.uv;

 lockdep_assert_held(&ch->lock);

 kfree(ch_uv->cached_notify_gru_mq_desc);
 ch_uv->cached_notify_gru_mq_desc = ((void*)0);

 if (ch->flags & XPC_C_SETUP) {
  xpc_init_fifo_uv(&ch_uv->msg_slot_free_list);
  kfree(ch_uv->send_msg_slots);
  xpc_init_fifo_uv(&ch_uv->recv_msg_list);
  kfree(ch_uv->recv_msg_slots);
 }
}
