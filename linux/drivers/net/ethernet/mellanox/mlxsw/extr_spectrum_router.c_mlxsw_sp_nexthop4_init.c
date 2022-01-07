
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct mlxsw_sp_nexthop_group {int dummy; } ;
struct TYPE_3__ {struct fib_nh* fib_nh; } ;
struct mlxsw_sp_nexthop {int nh_weight; int router_list_node; int gw_addr; TYPE_1__ key; struct mlxsw_sp_nexthop_group* nh_grp; } ;
struct mlxsw_sp {TYPE_2__* router; } ;
struct in_device {int dummy; } ;
struct fib_nh {int fib_nh_weight; int fib_nh_flags; int fib_nh_gw4; struct net_device* fib_nh_dev; } ;
struct TYPE_4__ {int nexthop_list; } ;


 scalar_t__ IN_DEV_IGNORE_ROUTES_WITH_LINKDOWN (struct in_device*) ;
 int RTNH_F_LINKDOWN ;
 struct in_device* __in_dev_get_rtnl (struct net_device*) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,int *,int) ;
 int mlxsw_sp_nexthop4_type_init (struct mlxsw_sp*,struct mlxsw_sp_nexthop*,struct fib_nh*) ;
 int mlxsw_sp_nexthop_counter_alloc (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ;
 int mlxsw_sp_nexthop_insert (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ;
 int mlxsw_sp_nexthop_remove (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ;

__attribute__((used)) static int mlxsw_sp_nexthop4_init(struct mlxsw_sp *mlxsw_sp,
      struct mlxsw_sp_nexthop_group *nh_grp,
      struct mlxsw_sp_nexthop *nh,
      struct fib_nh *fib_nh)
{
 struct net_device *dev = fib_nh->fib_nh_dev;
 struct in_device *in_dev;
 int err;

 nh->nh_grp = nh_grp;
 nh->key.fib_nh = fib_nh;



 nh->nh_weight = 1;

 memcpy(&nh->gw_addr, &fib_nh->fib_nh_gw4, sizeof(fib_nh->fib_nh_gw4));
 err = mlxsw_sp_nexthop_insert(mlxsw_sp, nh);
 if (err)
  return err;

 mlxsw_sp_nexthop_counter_alloc(mlxsw_sp, nh);
 list_add_tail(&nh->router_list_node, &mlxsw_sp->router->nexthop_list);

 if (!dev)
  return 0;

 in_dev = __in_dev_get_rtnl(dev);
 if (in_dev && IN_DEV_IGNORE_ROUTES_WITH_LINKDOWN(in_dev) &&
     fib_nh->fib_nh_flags & RTNH_F_LINKDOWN)
  return 0;

 err = mlxsw_sp_nexthop4_type_init(mlxsw_sp, nh, fib_nh);
 if (err)
  goto err_nexthop_neigh_init;

 return 0;

err_nexthop_neigh_init:
 mlxsw_sp_nexthop_remove(mlxsw_sp, nh);
 return err;
}
