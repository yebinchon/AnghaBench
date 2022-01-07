
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fib_node {struct mlxsw_sp_fib* fib; } ;
struct mlxsw_sp_fib {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_fib_lpm_tree_unlink (struct mlxsw_sp*,struct mlxsw_sp_fib_node*) ;
 int mlxsw_sp_fib_node_remove (struct mlxsw_sp_fib*,struct mlxsw_sp_fib_node*) ;

__attribute__((used)) static void mlxsw_sp_fib_node_fini(struct mlxsw_sp *mlxsw_sp,
       struct mlxsw_sp_fib_node *fib_node)
{
 struct mlxsw_sp_fib *fib = fib_node->fib;

 mlxsw_sp_fib_lpm_tree_unlink(mlxsw_sp, fib_node);
 fib_node->fib = ((void*)0);
 mlxsw_sp_fib_node_remove(fib, fib_node);
}
