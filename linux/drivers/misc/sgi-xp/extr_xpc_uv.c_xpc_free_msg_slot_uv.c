
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xpc_send_msg_slot_uv {int next; } ;
struct TYPE_3__ {int msg_slot_free_list; } ;
struct TYPE_4__ {TYPE_1__ uv; } ;
struct xpc_channel {int msg_allocate_wq; int n_on_msg_allocate_wq; TYPE_2__ sn; } ;


 scalar_t__ atomic_read (int *) ;
 int wake_up (int *) ;
 int xpc_put_fifo_entry_uv (int *,int *) ;

__attribute__((used)) static void
xpc_free_msg_slot_uv(struct xpc_channel *ch,
       struct xpc_send_msg_slot_uv *msg_slot)
{
 xpc_put_fifo_entry_uv(&ch->sn.uv.msg_slot_free_list, &msg_slot->next);


 if (atomic_read(&ch->n_on_msg_allocate_wq) > 0)
  wake_up(&ch->msg_allocate_wq);
}
