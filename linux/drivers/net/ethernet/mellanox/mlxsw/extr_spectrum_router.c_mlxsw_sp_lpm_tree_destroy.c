
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_lpm_tree {int dummy; } ;
struct mlxsw_sp {int dummy; } ;


 int mlxsw_sp_lpm_tree_free (struct mlxsw_sp*,struct mlxsw_sp_lpm_tree*) ;

__attribute__((used)) static void mlxsw_sp_lpm_tree_destroy(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp_lpm_tree *lpm_tree)
{
 mlxsw_sp_lpm_tree_free(mlxsw_sp, lpm_tree);
}
