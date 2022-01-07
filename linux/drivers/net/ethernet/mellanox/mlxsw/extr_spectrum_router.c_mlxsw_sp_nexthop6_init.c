
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int ifindex; } ;
struct mlxsw_sp_nexthop_group {int dummy; } ;
struct mlxsw_sp_nexthop {int ifindex; int router_list_node; int gw_addr; int nh_weight; struct mlxsw_sp_nexthop_group* nh_grp; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct fib6_info {TYPE_2__* fib6_nh; } ;
struct TYPE_4__ {int fib_nh_gw6; int fib_nh_weight; struct net_device* fib_nh_dev; } ;
struct TYPE_3__ {int nexthop_list; } ;


 int list_add_tail (int *,int *) ;
 int memcpy (int *,int *,int) ;
 int mlxsw_sp_nexthop6_type_init (struct mlxsw_sp*,struct mlxsw_sp_nexthop_group*,struct mlxsw_sp_nexthop*,struct fib6_info const*) ;
 int mlxsw_sp_nexthop_counter_alloc (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ;

__attribute__((used)) static int mlxsw_sp_nexthop6_init(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_nexthop_group *nh_grp,
      struct mlxsw_sp_nexthop *nh,
      const struct fib6_info *rt)
{
 struct net_device *dev = rt->fib6_nh->fib_nh_dev;

 nh->nh_grp = nh_grp;
 nh->nh_weight = rt->fib6_nh->fib_nh_weight;
 memcpy(&nh->gw_addr, &rt->fib6_nh->fib_nh_gw6, sizeof(nh->gw_addr));
 mlxsw_sp_nexthop_counter_alloc(mlxsw_sp, nh);

 list_add_tail(&nh->router_list_node, &mlxsw_sp->router->nexthop_list);

 if (!dev)
  return 0;
 nh->ifindex = dev->ifindex;

 return mlxsw_sp_nexthop6_type_init(mlxsw_sp, nh_grp, nh, rt);
}
