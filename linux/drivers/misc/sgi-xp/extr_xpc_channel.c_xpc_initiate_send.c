
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct xpc_partition {int nchannels; int * channels; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_2__ {int (* send_payload ) (int *,int ,void*,int ,int ,int *,int *) ;} ;


 int DBUG_ON (int) ;
 int dev_dbg (int ,char*,void*,short,int) ;
 int stub1 (int *,int ,void*,int ,int ,int *,int *) ;
 int xpUnknownReason ;
 short xp_max_npartitions ;
 TYPE_1__ xpc_arch_ops ;
 int xpc_chan ;
 int xpc_part_deref (struct xpc_partition*) ;
 scalar_t__ xpc_part_ref (struct xpc_partition*) ;
 struct xpc_partition* xpc_partitions ;

enum xp_retval
xpc_initiate_send(short partid, int ch_number, u32 flags, void *payload,
    u16 payload_size)
{
 struct xpc_partition *part = &xpc_partitions[partid];
 enum xp_retval ret = xpUnknownReason;

 dev_dbg(xpc_chan, "payload=0x%p, partid=%d, channel=%d\n", payload,
  partid, ch_number);

 DBUG_ON(partid < 0 || partid >= xp_max_npartitions);
 DBUG_ON(ch_number < 0 || ch_number >= part->nchannels);
 DBUG_ON(payload == ((void*)0));

 if (xpc_part_ref(part)) {
  ret = xpc_arch_ops.send_payload(&part->channels[ch_number],
      flags, payload, payload_size, 0, ((void*)0), ((void*)0));
  xpc_part_deref(part);
 }

 return ret;
}
