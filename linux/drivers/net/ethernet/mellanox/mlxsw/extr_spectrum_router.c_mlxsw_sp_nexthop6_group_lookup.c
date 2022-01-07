
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_nexthop_group_cmp_arg {struct mlxsw_sp_fib6_entry* fib6_entry; int proto; } ;
struct mlxsw_sp_nexthop_group {int dummy; } ;
struct mlxsw_sp_fib6_entry {int dummy; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {int nexthop_group_ht; } ;


 int MLXSW_SP_L3_PROTO_IPV6 ;
 int mlxsw_sp_nexthop_group_ht_params ;
 struct mlxsw_sp_nexthop_group* rhashtable_lookup_fast (int *,struct mlxsw_sp_nexthop_group_cmp_arg*,int ) ;

__attribute__((used)) static struct mlxsw_sp_nexthop_group *
mlxsw_sp_nexthop6_group_lookup(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp_fib6_entry *fib6_entry)
{
 struct mlxsw_sp_nexthop_group_cmp_arg cmp_arg;

 cmp_arg.proto = MLXSW_SP_L3_PROTO_IPV6;
 cmp_arg.fib6_entry = fib6_entry;
 return rhashtable_lookup_fast(&mlxsw_sp->router->nexthop_group_ht,
          &cmp_arg,
          mlxsw_sp_nexthop_group_ht_params);
}
