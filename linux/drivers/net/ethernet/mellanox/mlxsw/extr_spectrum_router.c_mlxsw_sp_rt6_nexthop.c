
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_rt6 {struct fib6_info* rt; } ;
struct mlxsw_sp_nexthop_group {int count; struct mlxsw_sp_nexthop* nexthops; } ;
struct mlxsw_sp_nexthop {int gw_addr; TYPE_1__* rif; } ;
struct in6_addr {int dummy; } ;
struct fib6_info {TYPE_2__* fib6_nh; } ;
struct TYPE_4__ {scalar_t__ fib_nh_dev; int fib_nh_gw6; } ;
struct TYPE_3__ {scalar_t__ dev; } ;


 scalar_t__ ipv6_addr_equal (struct in6_addr const*,int *) ;

__attribute__((used)) static struct mlxsw_sp_nexthop *
mlxsw_sp_rt6_nexthop(struct mlxsw_sp_nexthop_group *nh_grp,
       const struct mlxsw_sp_rt6 *mlxsw_sp_rt6)
{
 int i;

 for (i = 0; i < nh_grp->count; i++) {
  struct mlxsw_sp_nexthop *nh = &nh_grp->nexthops[i];
  struct fib6_info *rt = mlxsw_sp_rt6->rt;

  if (nh->rif && nh->rif->dev == rt->fib6_nh->fib_nh_dev &&
      ipv6_addr_equal((const struct in6_addr *) &nh->gw_addr,
        &rt->fib6_nh->fib_nh_gw6))
   return nh;
  continue;
 }

 return ((void*)0);
}
