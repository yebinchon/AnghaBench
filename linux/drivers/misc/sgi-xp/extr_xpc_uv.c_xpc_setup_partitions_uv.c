
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xpc_partition_uv {int remote_act_state; int flags_lock; int cached_activate_gru_mq_desc_mutex; } ;
struct TYPE_3__ {struct xpc_partition_uv uv; } ;
struct TYPE_4__ {TYPE_1__ sn; } ;


 int XPC_P_AS_INACTIVE ;
 short XP_MAX_NPARTITIONS_UV ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 TYPE_2__* xpc_partitions ;

__attribute__((used)) static int
xpc_setup_partitions_uv(void)
{
 short partid;
 struct xpc_partition_uv *part_uv;

 for (partid = 0; partid < XP_MAX_NPARTITIONS_UV; partid++) {
  part_uv = &xpc_partitions[partid].sn.uv;

  mutex_init(&part_uv->cached_activate_gru_mq_desc_mutex);
  spin_lock_init(&part_uv->flags_lock);
  part_uv->remote_act_state = XPC_P_AS_INACTIVE;
 }
 return 0;
}
