
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_table_attr {int prio; int level; int max_fte; } ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_steering {int dev; } ;
struct mlx5_flow_namespace {int dummy; } ;


 int ANCHOR_LEVEL ;
 int ANCHOR_PRIO ;
 int ANCHOR_SIZE ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct mlx5_flow_table*) ;
 int MLX5_FLOW_NAMESPACE_ANCHOR ;
 int PTR_ERR (struct mlx5_flow_table*) ;
 scalar_t__ WARN_ON (int) ;
 int mlx5_core_err (int ,char*) ;
 struct mlx5_flow_table* mlx5_create_flow_table (struct mlx5_flow_namespace*,struct mlx5_flow_table_attr*) ;
 struct mlx5_flow_namespace* mlx5_get_flow_namespace (int ,int ) ;

__attribute__((used)) static int create_anchor_flow_table(struct mlx5_flow_steering *steering)
{
 struct mlx5_flow_namespace *ns = ((void*)0);
 struct mlx5_flow_table_attr ft_attr = {};
 struct mlx5_flow_table *ft;

 ns = mlx5_get_flow_namespace(steering->dev, MLX5_FLOW_NAMESPACE_ANCHOR);
 if (WARN_ON(!ns))
  return -EINVAL;

 ft_attr.max_fte = ANCHOR_SIZE;
 ft_attr.level = ANCHOR_LEVEL;
 ft_attr.prio = ANCHOR_PRIO;

 ft = mlx5_create_flow_table(ns, &ft_attr);
 if (IS_ERR(ft)) {
  mlx5_core_err(steering->dev, "Failed to create last anchor flow table");
  return PTR_ERR(ft);
 }
 return 0;
}
