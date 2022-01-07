
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fib6_entry {int nrt6; int common; } ;
struct mlxsw_sp {int dummy; } ;


 int WARN_ON (int ) ;
 int kfree (struct mlxsw_sp_fib6_entry*) ;
 int mlxsw_sp_fib6_entry_rt_destroy_all (struct mlxsw_sp_fib6_entry*) ;
 int mlxsw_sp_nexthop6_group_put (struct mlxsw_sp*,int *) ;

__attribute__((used)) static void mlxsw_sp_fib6_entry_destroy(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_fib6_entry *fib6_entry)
{
 mlxsw_sp_nexthop6_group_put(mlxsw_sp, &fib6_entry->common);
 mlxsw_sp_fib6_entry_rt_destroy_all(fib6_entry);
 WARN_ON(fib6_entry->nrt6);
 kfree(fib6_entry);
}
