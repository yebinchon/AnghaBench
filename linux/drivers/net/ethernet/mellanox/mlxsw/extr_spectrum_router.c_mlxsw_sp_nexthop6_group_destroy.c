
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_nexthop_group {int count; int adj_index_valid; struct mlxsw_sp_nexthop* nexthops; } ;
struct mlxsw_sp_nexthop {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int WARN_ON (int ) ;
 int kfree (struct mlxsw_sp_nexthop_group*) ;
 int mlxsw_sp_nexthop6_fini (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ;
 int mlxsw_sp_nexthop_group_refresh (struct mlxsw_sp*,struct mlxsw_sp_nexthop_group*) ;
 int mlxsw_sp_nexthop_group_remove (struct mlxsw_sp*,struct mlxsw_sp_nexthop_group*) ;

__attribute__((used)) static void
mlxsw_sp_nexthop6_group_destroy(struct mlxsw_sp *mlxsw_sp,
    struct mlxsw_sp_nexthop_group *nh_grp)
{
 struct mlxsw_sp_nexthop *nh;
 int i = nh_grp->count;

 mlxsw_sp_nexthop_group_remove(mlxsw_sp, nh_grp);
 for (i--; i >= 0; i--) {
  nh = &nh_grp->nexthops[i];
  mlxsw_sp_nexthop6_fini(mlxsw_sp, nh);
 }
 mlxsw_sp_nexthop_group_refresh(mlxsw_sp, nh_grp);
 WARN_ON(nh_grp->adj_index_valid);
 kfree(nh_grp);
}
