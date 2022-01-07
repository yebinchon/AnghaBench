
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_group {int id; int node; } ;


 int get_dev (int *) ;
 int mlx5_core_warn (int ,char*,int ) ;
 scalar_t__ tree_remove_node (int *,int) ;

void mlx5_destroy_flow_group(struct mlx5_flow_group *fg)
{
 if (tree_remove_node(&fg->node, 0))
  mlx5_core_warn(get_dev(&fg->node), "Flow group %d wasn't destroyed, refcount > 1\n",
          fg->id);
}
