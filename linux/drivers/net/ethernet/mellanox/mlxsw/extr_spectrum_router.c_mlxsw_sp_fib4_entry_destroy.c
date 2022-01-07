
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fib4_entry {int common; } ;
struct mlxsw_sp {int dummy; } ;


 int kfree (struct mlxsw_sp_fib4_entry*) ;
 int mlxsw_sp_nexthop4_group_put (struct mlxsw_sp*,int *) ;

__attribute__((used)) static void mlxsw_sp_fib4_entry_destroy(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_fib4_entry *fib4_entry)
{
 mlxsw_sp_nexthop4_group_put(mlxsw_sp, &fib4_entry->common);
 kfree(fib4_entry);
}
