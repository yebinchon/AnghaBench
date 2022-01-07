
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_nexthop_group {int fib_list; } ;
struct mlxsw_sp_fib_entry {int nexthop_group_node; struct mlxsw_sp_nexthop_group* nh_group; } ;
struct mlxsw_sp {int dummy; } ;


 int list_del (int *) ;
 int list_empty (int *) ;
 int mlxsw_sp_nexthop4_group_destroy (struct mlxsw_sp*,struct mlxsw_sp_nexthop_group*) ;

__attribute__((used)) static void mlxsw_sp_nexthop4_group_put(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_fib_entry *fib_entry)
{
 struct mlxsw_sp_nexthop_group *nh_grp = fib_entry->nh_group;

 list_del(&fib_entry->nexthop_group_node);
 if (!list_empty(&nh_grp->fib_list))
  return;
 mlxsw_sp_nexthop4_group_destroy(mlxsw_sp, nh_grp);
}
