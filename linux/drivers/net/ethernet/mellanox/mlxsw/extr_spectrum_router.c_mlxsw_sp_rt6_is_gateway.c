
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp {int dummy; } ;
struct fib6_info {TYPE_1__* fib6_nh; } ;
struct TYPE_2__ {scalar_t__ fib_nh_gw_family; } ;


 scalar_t__ mlxsw_sp_nexthop6_ipip_type (struct mlxsw_sp const*,struct fib6_info const*,int *) ;

__attribute__((used)) static bool mlxsw_sp_rt6_is_gateway(const struct mlxsw_sp *mlxsw_sp,
        const struct fib6_info *rt)
{
 return rt->fib6_nh->fib_nh_gw_family ||
        mlxsw_sp_nexthop6_ipip_type(mlxsw_sp, rt, ((void*)0));
}
