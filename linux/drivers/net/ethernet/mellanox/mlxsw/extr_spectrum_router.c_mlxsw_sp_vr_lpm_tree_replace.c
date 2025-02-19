
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_lpm_tree {int id; } ;
struct mlxsw_sp_fib {struct mlxsw_sp_lpm_tree* lpm_tree; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_lpm_tree_hold (struct mlxsw_sp_lpm_tree*) ;
 int mlxsw_sp_lpm_tree_put (struct mlxsw_sp*,struct mlxsw_sp_lpm_tree*) ;
 int mlxsw_sp_vr_lpm_tree_bind (struct mlxsw_sp*,struct mlxsw_sp_fib*,int ) ;

__attribute__((used)) static int mlxsw_sp_vr_lpm_tree_replace(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_fib *fib,
     struct mlxsw_sp_lpm_tree *new_tree)
{
 struct mlxsw_sp_lpm_tree *old_tree = fib->lpm_tree;
 int err;

 fib->lpm_tree = new_tree;
 mlxsw_sp_lpm_tree_hold(new_tree);
 err = mlxsw_sp_vr_lpm_tree_bind(mlxsw_sp, fib, new_tree->id);
 if (err)
  goto err_tree_bind;
 mlxsw_sp_lpm_tree_put(mlxsw_sp, old_tree);
 return 0;

err_tree_bind:
 mlxsw_sp_lpm_tree_put(mlxsw_sp, new_tree);
 fib->lpm_tree = old_tree;
 return err;
}
