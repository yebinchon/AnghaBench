
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xpc_partition_uv {int cached_activate_gru_mq_desc_mutex; int * cached_activate_gru_mq_desc; int flags_lock; int flags; } ;
struct TYPE_3__ {struct xpc_partition_uv uv; } ;
struct TYPE_4__ {TYPE_1__ sn; } ;


 int XPC_P_CACHED_ACTIVATE_GRU_MQ_DESC_UV ;
 short XP_MAX_NPARTITIONS_UV ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_2__* xpc_partitions ;

__attribute__((used)) static void
xpc_teardown_partitions_uv(void)
{
 short partid;
 struct xpc_partition_uv *part_uv;
 unsigned long irq_flags;

 for (partid = 0; partid < XP_MAX_NPARTITIONS_UV; partid++) {
  part_uv = &xpc_partitions[partid].sn.uv;

  if (part_uv->cached_activate_gru_mq_desc != ((void*)0)) {
   mutex_lock(&part_uv->cached_activate_gru_mq_desc_mutex);
   spin_lock_irqsave(&part_uv->flags_lock, irq_flags);
   part_uv->flags &= ~XPC_P_CACHED_ACTIVATE_GRU_MQ_DESC_UV;
   spin_unlock_irqrestore(&part_uv->flags_lock, irq_flags);
   kfree(part_uv->cached_activate_gru_mq_desc);
   part_uv->cached_activate_gru_mq_desc = ((void*)0);
   mutex_unlock(&part_uv->
         cached_activate_gru_mq_desc_mutex);
  }
 }
}
