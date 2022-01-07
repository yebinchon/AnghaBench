
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp_lpm_tree {scalar_t__ ref_count; } ;
struct mlxsw_sp {TYPE_2__* router; } ;
struct TYPE_3__ {int tree_count; struct mlxsw_sp_lpm_tree* trees; } ;
struct TYPE_4__ {TYPE_1__ lpm; } ;



__attribute__((used)) static struct mlxsw_sp_lpm_tree *
mlxsw_sp_lpm_tree_find_unused(struct mlxsw_sp *mlxsw_sp)
{
 static struct mlxsw_sp_lpm_tree *lpm_tree;
 int i;

 for (i = 0; i < mlxsw_sp->router->lpm.tree_count; i++) {
  lpm_tree = &mlxsw_sp->router->lpm.trees[i];
  if (lpm_tree->ref_count == 0)
   return lpm_tree;
 }
 return ((void*)0);
}
