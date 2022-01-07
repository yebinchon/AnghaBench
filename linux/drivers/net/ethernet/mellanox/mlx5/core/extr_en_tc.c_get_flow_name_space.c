
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_tc_flow {int dummy; } ;


 int MLX5_FLOW_NAMESPACE_FDB ;
 int MLX5_FLOW_NAMESPACE_KERNEL ;
 scalar_t__ mlx5e_is_eswitch_flow (struct mlx5e_tc_flow*) ;

__attribute__((used)) static int get_flow_name_space(struct mlx5e_tc_flow *flow)
{
 return mlx5e_is_eswitch_flow(flow) ?
  MLX5_FLOW_NAMESPACE_FDB : MLX5_FLOW_NAMESPACE_KERNEL;
}
