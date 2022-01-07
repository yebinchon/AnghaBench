
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_partition {int dummy; } ;


 int DBUG_ON (int) ;
 int XPC_MAX_NCHANNELS ;
 short xp_max_npartitions ;
 int xpc_part_deref (struct xpc_partition*) ;
 scalar_t__ xpc_part_ref (struct xpc_partition*) ;
 struct xpc_partition* xpc_partitions ;
 int xpc_wakeup_channel_mgr (struct xpc_partition*) ;

void
xpc_initiate_connect(int ch_number)
{
 short partid;
 struct xpc_partition *part;

 DBUG_ON(ch_number < 0 || ch_number >= XPC_MAX_NCHANNELS);

 for (partid = 0; partid < xp_max_npartitions; partid++) {
  part = &xpc_partitions[partid];

  if (xpc_part_ref(part)) {




   xpc_wakeup_channel_mgr(part);
   xpc_part_deref(part);
  }
 }
}
