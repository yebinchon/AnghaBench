
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fib6_entry {int common; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_fib6_node_list_remove (struct mlxsw_sp_fib6_entry*) ;
 int mlxsw_sp_fib_node_entry_del (struct mlxsw_sp*,int *) ;

__attribute__((used)) static void
mlxsw_sp_fib6_node_entry_unlink(struct mlxsw_sp *mlxsw_sp,
    struct mlxsw_sp_fib6_entry *fib6_entry)
{
 mlxsw_sp_fib_node_entry_del(mlxsw_sp, &fib6_entry->common);
 mlxsw_sp_fib6_node_list_remove(fib6_entry);
}
