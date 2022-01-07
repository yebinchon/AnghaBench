
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ uv; } ;
struct TYPE_6__ {TYPE_2__ sn; } ;


 int XPC_P_ENGAGED_UV ;
 TYPE_3__* xpc_partitions ;

__attribute__((used)) static int
xpc_partition_engaged_uv(short partid)
{
 return (xpc_partitions[partid].sn.uv.flags & XPC_P_ENGAGED_UV) != 0;
}
