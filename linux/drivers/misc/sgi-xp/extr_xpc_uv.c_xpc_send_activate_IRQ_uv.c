
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xpc_partition_uv {int flags; int cached_activate_gru_mq_desc_mutex; struct gru_message_queue_desc* cached_activate_gru_mq_desc; int flags_lock; int activate_gru_mq_desc_gpa; } ;
struct TYPE_3__ {struct xpc_partition_uv uv; } ;
struct xpc_partition {int act_state; TYPE_1__ sn; } ;
struct xpc_activate_mq_msghdr_uv {int type; int rp_ts_jiffies; int act_state; int partid; } ;
struct gru_message_queue_desc {int dummy; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_4__ {int ts_jiffies; } ;


 int DBUG_ON (int) ;
 int GFP_ATOMIC ;
 size_t XPC_ACTIVATE_MSG_SIZE_UV ;
 int XPC_P_CACHED_ACTIVATE_GRU_MQ_DESC_UV ;
 struct gru_message_queue_desc* kmalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smp_rmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xpNoMemory ;
 int xpSuccess ;
 int xp_partition_id ;
 int xpc_cache_remote_gru_mq_desc_uv (struct gru_message_queue_desc*,int ) ;
 TYPE_2__* xpc_rsvd_page ;
 int xpc_send_gru_msg (struct gru_message_queue_desc*,void*,size_t) ;

__attribute__((used)) static enum xp_retval
xpc_send_activate_IRQ_uv(struct xpc_partition *part, void *msg, size_t msg_size,
    int msg_type)
{
 struct xpc_activate_mq_msghdr_uv *msg_hdr = msg;
 struct xpc_partition_uv *part_uv = &part->sn.uv;
 struct gru_message_queue_desc *gru_mq_desc;
 unsigned long irq_flags;
 enum xp_retval ret;

 DBUG_ON(msg_size > XPC_ACTIVATE_MSG_SIZE_UV);

 msg_hdr->type = msg_type;
 msg_hdr->partid = xp_partition_id;
 msg_hdr->act_state = part->act_state;
 msg_hdr->rp_ts_jiffies = xpc_rsvd_page->ts_jiffies;

 mutex_lock(&part_uv->cached_activate_gru_mq_desc_mutex);
again:
 if (!(part_uv->flags & XPC_P_CACHED_ACTIVATE_GRU_MQ_DESC_UV)) {
  gru_mq_desc = part_uv->cached_activate_gru_mq_desc;
  if (gru_mq_desc == ((void*)0)) {
   gru_mq_desc = kmalloc(sizeof(struct
           gru_message_queue_desc),
           GFP_ATOMIC);
   if (gru_mq_desc == ((void*)0)) {
    ret = xpNoMemory;
    goto done;
   }
   part_uv->cached_activate_gru_mq_desc = gru_mq_desc;
  }

  ret = xpc_cache_remote_gru_mq_desc_uv(gru_mq_desc,
            part_uv->
            activate_gru_mq_desc_gpa);
  if (ret != xpSuccess)
   goto done;

  spin_lock_irqsave(&part_uv->flags_lock, irq_flags);
  part_uv->flags |= XPC_P_CACHED_ACTIVATE_GRU_MQ_DESC_UV;
  spin_unlock_irqrestore(&part_uv->flags_lock, irq_flags);
 }


 ret = xpc_send_gru_msg(part_uv->cached_activate_gru_mq_desc, msg,
          msg_size);
 if (ret != xpSuccess) {
  smp_rmb();
  if (!(part_uv->flags & XPC_P_CACHED_ACTIVATE_GRU_MQ_DESC_UV))
   goto again;
 }
done:
 mutex_unlock(&part_uv->cached_activate_gru_mq_desc_mutex);
 return ret;
}
