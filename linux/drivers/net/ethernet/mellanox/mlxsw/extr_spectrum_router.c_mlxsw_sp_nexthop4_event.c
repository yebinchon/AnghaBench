
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_nexthop_key {struct fib_nh* fib_nh; } ;
struct mlxsw_sp_nexthop {int nh_grp; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct fib_nh {int dummy; } ;
struct TYPE_2__ {scalar_t__ aborted; } ;




 scalar_t__ WARN_ON_ONCE (int) ;
 int mlxsw_sp_nexthop4_type_fini (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ;
 int mlxsw_sp_nexthop4_type_init (struct mlxsw_sp*,struct mlxsw_sp_nexthop*,struct fib_nh*) ;
 int mlxsw_sp_nexthop_group_refresh (struct mlxsw_sp*,int ) ;
 struct mlxsw_sp_nexthop* mlxsw_sp_nexthop_lookup (struct mlxsw_sp*,struct mlxsw_sp_nexthop_key) ;

__attribute__((used)) static void mlxsw_sp_nexthop4_event(struct mlxsw_sp *mlxsw_sp,
        unsigned long event, struct fib_nh *fib_nh)
{
 struct mlxsw_sp_nexthop_key key;
 struct mlxsw_sp_nexthop *nh;

 if (mlxsw_sp->router->aborted)
  return;

 key.fib_nh = fib_nh;
 nh = mlxsw_sp_nexthop_lookup(mlxsw_sp, key);
 if (WARN_ON_ONCE(!nh))
  return;

 switch (event) {
 case 129:
  mlxsw_sp_nexthop4_type_init(mlxsw_sp, nh, fib_nh);
  break;
 case 128:
  mlxsw_sp_nexthop4_type_fini(mlxsw_sp, nh);
  break;
 }

 mlxsw_sp_nexthop_group_refresh(mlxsw_sp, nh->nh_grp);
}
