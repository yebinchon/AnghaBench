
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int MLX5_CAP_ESW_FLOWTABLE_FDB (struct mlx5_core_dev*,int ) ;
 int MLX5_CAP_FLOWTABLE_NIC_RX (struct mlx5_core_dev*,int ) ;
 int MLX5_FLOW_NAMESPACE_FDB ;
 int max_modify_header_actions ;

__attribute__((used)) static int mlx5e_flow_namespace_max_modify_action(struct mlx5_core_dev *mdev,
        int namespace)
{
 if (namespace == MLX5_FLOW_NAMESPACE_FDB)
  return MLX5_CAP_ESW_FLOWTABLE_FDB(mdev, max_modify_header_actions);
 else
  return MLX5_CAP_FLOWTABLE_NIC_RX(mdev, max_modify_header_actions);
}
