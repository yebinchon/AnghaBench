
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int mdev; } ;


 scalar_t__ MLX5_CAP_PCAM_FEATURE (int ,int ) ;
 int NUM_PPORT_ETH_EXT_COUNTERS ;
 int rx_buffer_fullness_counters ;

__attribute__((used)) static int mlx5e_grp_eth_ext_get_num_stats(struct mlx5e_priv *priv)
{
 if (MLX5_CAP_PCAM_FEATURE((priv)->mdev, rx_buffer_fullness_counters))
  return NUM_PPORT_ETH_EXT_COUNTERS;

 return 0;
}
