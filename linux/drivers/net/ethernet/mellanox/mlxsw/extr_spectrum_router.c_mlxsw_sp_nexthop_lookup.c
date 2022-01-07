
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_nexthop_key {int dummy; } ;
struct mlxsw_sp_nexthop {int dummy; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {int nexthop_ht; } ;


 int mlxsw_sp_nexthop_ht_params ;
 struct mlxsw_sp_nexthop* rhashtable_lookup_fast (int *,struct mlxsw_sp_nexthop_key*,int ) ;

__attribute__((used)) static struct mlxsw_sp_nexthop *
mlxsw_sp_nexthop_lookup(struct mlxsw_sp *mlxsw_sp,
   struct mlxsw_sp_nexthop_key key)
{
 return rhashtable_lookup_fast(&mlxsw_sp->router->nexthop_ht, &key,
          mlxsw_sp_nexthop_ht_params);
}
