
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5_CAP_ETH (struct mlx5_core_dev*,int ) ;
 int swp ;
 int swp_csum ;
 int swp_lso ;

__attribute__((used)) static inline bool mlx5_tx_swp_supported(struct mlx5_core_dev *mdev)
{
 return MLX5_CAP_ETH(mdev, swp) &&
  MLX5_CAP_ETH(mdev, swp_csum) && MLX5_CAP_ETH(mdev, swp_lso);
}
