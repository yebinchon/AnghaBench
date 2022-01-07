
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_nexthop {int ht_node; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {int nexthop_ht; } ;


 int mlxsw_sp_nexthop_ht_params ;
 int rhashtable_insert_fast (int *,int *,int ) ;

__attribute__((used)) static int mlxsw_sp_nexthop_insert(struct mlxsw_sp *mlxsw_sp,
       struct mlxsw_sp_nexthop *nh)
{
 return rhashtable_insert_fast(&mlxsw_sp->router->nexthop_ht,
          &nh->ht_node, mlxsw_sp_nexthop_ht_params);
}
