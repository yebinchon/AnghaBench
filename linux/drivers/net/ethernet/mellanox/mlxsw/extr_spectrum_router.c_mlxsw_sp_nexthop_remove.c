
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_nexthop {int ht_node; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {int nexthop_ht; } ;


 int mlxsw_sp_nexthop_ht_params ;
 int rhashtable_remove_fast (int *,int *,int ) ;

__attribute__((used)) static void mlxsw_sp_nexthop_remove(struct mlxsw_sp *mlxsw_sp,
        struct mlxsw_sp_nexthop *nh)
{
 rhashtable_remove_fast(&mlxsw_sp->router->nexthop_ht, &nh->ht_node,
          mlxsw_sp_nexthop_ht_params);
}
