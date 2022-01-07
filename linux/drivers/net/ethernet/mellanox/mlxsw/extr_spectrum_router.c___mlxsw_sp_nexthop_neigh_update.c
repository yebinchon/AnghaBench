
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_nexthop {int should_offload; int update; } ;



__attribute__((used)) static void __mlxsw_sp_nexthop_neigh_update(struct mlxsw_sp_nexthop *nh,
         bool removing)
{
 if (!removing)
  nh->should_offload = 1;
 else
  nh->should_offload = 0;
 nh->update = 1;
}
