
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_nexthop_group {int count; struct mlxsw_sp_nexthop* nexthops; } ;
struct mlxsw_sp_nexthop {scalar_t__ type; struct mlxsw_sp_nexthop_group* nh_grp; } ;


 scalar_t__ MLXSW_SP_NEXTHOP_TYPE_IPIP ;

bool mlxsw_sp_nexthop_group_has_ipip(struct mlxsw_sp_nexthop *nh)
{
 struct mlxsw_sp_nexthop_group *nh_grp = nh->nh_grp;
 int i;

 for (i = 0; i < nh_grp->count; i++) {
  struct mlxsw_sp_nexthop *nh_iter = &nh_grp->nexthops[i];

  if (nh_iter->type == MLXSW_SP_NEXTHOP_TYPE_IPIP)
   return 1;
 }
 return 0;
}
