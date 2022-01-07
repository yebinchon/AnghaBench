
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_nexthop_group {int count; int adj_index_valid; struct mlxsw_sp_nexthop* nexthops; } ;
struct mlxsw_sp_nexthop {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int WARN_ON_ONCE (int ) ;
 int fib_info_put (int ) ;
 int kfree (struct mlxsw_sp_nexthop_group*) ;
 int mlxsw_sp_nexthop4_fini (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ;
 int mlxsw_sp_nexthop4_group_fi (struct mlxsw_sp_nexthop_group*) ;
 int mlxsw_sp_nexthop_group_refresh (struct mlxsw_sp*,struct mlxsw_sp_nexthop_group*) ;
 int mlxsw_sp_nexthop_group_remove (struct mlxsw_sp*,struct mlxsw_sp_nexthop_group*) ;

__attribute__((used)) static void
mlxsw_sp_nexthop4_group_destroy(struct mlxsw_sp *mlxsw_sp,
    struct mlxsw_sp_nexthop_group *nh_grp)
{
 struct mlxsw_sp_nexthop *nh;
 int i;

 mlxsw_sp_nexthop_group_remove(mlxsw_sp, nh_grp);
 for (i = 0; i < nh_grp->count; i++) {
  nh = &nh_grp->nexthops[i];
  mlxsw_sp_nexthop4_fini(mlxsw_sp, nh);
 }
 mlxsw_sp_nexthop_group_refresh(mlxsw_sp, nh_grp);
 WARN_ON_ONCE(nh_grp->adj_index_valid);
 fib_info_put(mlxsw_sp_nexthop4_group_fi(nh_grp));
 kfree(nh_grp);
}
