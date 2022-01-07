
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_rt6 {int list; } ;
struct mlxsw_sp_fib6_entry {int nrt6; } ;
struct mlxsw_sp {int dummy; } ;
struct fib6_info {int dummy; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int list_del (int *) ;
 struct mlxsw_sp_rt6* mlxsw_sp_fib6_entry_rt_find (struct mlxsw_sp_fib6_entry*,struct fib6_info*) ;
 int mlxsw_sp_nexthop6_group_update (struct mlxsw_sp*,struct mlxsw_sp_fib6_entry*) ;
 int mlxsw_sp_rt6_destroy (struct mlxsw_sp_rt6*) ;

__attribute__((used)) static void
mlxsw_sp_fib6_entry_nexthop_del(struct mlxsw_sp *mlxsw_sp,
    struct mlxsw_sp_fib6_entry *fib6_entry,
    struct fib6_info **rt_arr, unsigned int nrt6)
{
 struct mlxsw_sp_rt6 *mlxsw_sp_rt6;
 int i;

 for (i = 0; i < nrt6; i++) {
  mlxsw_sp_rt6 = mlxsw_sp_fib6_entry_rt_find(fib6_entry,
          rt_arr[i]);
  if (WARN_ON_ONCE(!mlxsw_sp_rt6))
   continue;

  fib6_entry->nrt6--;
  list_del(&mlxsw_sp_rt6->list);
  mlxsw_sp_rt6_destroy(mlxsw_sp_rt6);
 }

 mlxsw_sp_nexthop6_group_update(mlxsw_sp, fib6_entry);
}
