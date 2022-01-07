
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_nexthop_group {int ht_node; int gateway; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {int nexthop_group_ht; } ;


 scalar_t__ AF_INET6 ;
 int mlxsw_sp_nexthop_group_ht_params ;
 scalar_t__ mlxsw_sp_nexthop_group_type (struct mlxsw_sp_nexthop_group*) ;
 int rhashtable_insert_fast (int *,int *,int ) ;

__attribute__((used)) static int mlxsw_sp_nexthop_group_insert(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_nexthop_group *nh_grp)
{
 if (mlxsw_sp_nexthop_group_type(nh_grp) == AF_INET6 &&
     !nh_grp->gateway)
  return 0;

 return rhashtable_insert_fast(&mlxsw_sp->router->nexthop_group_ht,
          &nh_grp->ht_node,
          mlxsw_sp_nexthop_group_ht_params);
}
