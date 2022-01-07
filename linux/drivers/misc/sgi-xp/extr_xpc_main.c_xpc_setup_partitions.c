
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct xpc_partition {int references; int teardown_wq; int setup_state; int disengage_timer; int act_state; int act_lock; scalar_t__ activate_IRQ_rcvd; } ;
struct TYPE_2__ {int (* setup_partitions ) () ;} ;


 int DBUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ L1_CACHE_ALIGN (scalar_t__) ;
 int XPC_P_AS_INACTIVE ;
 int XPC_P_SS_UNSET ;
 int XPC_SET_REASON (struct xpc_partition*,int ,int ) ;
 int atomic_set (int *,int ) ;
 int dev_err (int ,char*) ;
 int init_waitqueue_head (int *) ;
 struct xpc_partition* kcalloc (short,int,int ) ;
 int spin_lock_init (int *) ;
 int stub1 () ;
 int timer_setup (int *,int ,int ) ;
 short xp_max_npartitions ;
 TYPE_1__ xpc_arch_ops ;
 int xpc_part ;
 struct xpc_partition* xpc_partitions ;
 int xpc_timeout_partition_disengage ;

__attribute__((used)) static int
xpc_setup_partitions(void)
{
 short partid;
 struct xpc_partition *part;

 xpc_partitions = kcalloc(xp_max_npartitions,
     sizeof(struct xpc_partition),
     GFP_KERNEL);
 if (xpc_partitions == ((void*)0)) {
  dev_err(xpc_part, "can't get memory for partition structure\n");
  return -ENOMEM;
 }
 for (partid = 0; partid < xp_max_npartitions; partid++) {
  part = &xpc_partitions[partid];

  DBUG_ON((u64)part != L1_CACHE_ALIGN((u64)part));

  part->activate_IRQ_rcvd = 0;
  spin_lock_init(&part->act_lock);
  part->act_state = XPC_P_AS_INACTIVE;
  XPC_SET_REASON(part, 0, 0);

  timer_setup(&part->disengage_timer,
       xpc_timeout_partition_disengage, 0);

  part->setup_state = XPC_P_SS_UNSET;
  init_waitqueue_head(&part->teardown_wq);
  atomic_set(&part->references, 0);
 }

 return xpc_arch_ops.setup_partitions();
}
