
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_CAP_PORT_TYPE_ETH ;
 int mlx5_query_port_pause (struct mlx5_core_dev*,int*,int*) ;
 int port_type ;

__attribute__((used)) static bool mlx5e_query_global_pause_combined(struct mlx5e_priv *priv)
{
 struct mlx5_core_dev *mdev = priv->mdev;
 u32 rx_pause;
 u32 tx_pause;
 int err;

 if (MLX5_CAP_GEN(mdev, port_type) != MLX5_CAP_PORT_TYPE_ETH)
  return 0;

 err = mlx5_query_port_pause(mdev, &rx_pause, &tx_pause);

 return err ? 0 : rx_pause | tx_pause;
}
