
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_fib {int ht; int node_list; int lpm_tree; } ;
struct mlxsw_sp {int dummy; } ;


 int WARN_ON (int) ;
 int kfree (struct mlxsw_sp_fib*) ;
 int list_empty (int *) ;
 int mlxsw_sp_lpm_tree_put (struct mlxsw_sp*,int ) ;
 int mlxsw_sp_vr_lpm_tree_unbind (struct mlxsw_sp*,struct mlxsw_sp_fib*) ;
 int rhashtable_destroy (int *) ;

__attribute__((used)) static void mlxsw_sp_fib_destroy(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_fib *fib)
{
 mlxsw_sp_vr_lpm_tree_unbind(mlxsw_sp, fib);
 mlxsw_sp_lpm_tree_put(mlxsw_sp, fib->lpm_tree);
 WARN_ON(!list_empty(&fib->node_list));
 rhashtable_destroy(&fib->ht);
 kfree(fib);
}
