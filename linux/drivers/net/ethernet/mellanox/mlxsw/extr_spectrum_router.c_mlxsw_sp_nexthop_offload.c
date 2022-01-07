
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_nexthop {int offloaded; } ;



bool mlxsw_sp_nexthop_offload(struct mlxsw_sp_nexthop *nh)
{
 return nh->offloaded;
}
