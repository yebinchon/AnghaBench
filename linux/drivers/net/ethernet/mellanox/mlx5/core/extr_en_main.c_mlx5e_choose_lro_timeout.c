
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5E_LRO_TIMEOUT_ARR_SIZE ;
 scalar_t__ MLX5_CAP_ETH (struct mlx5_core_dev*,int ) ;
 int * lro_timer_supported_periods ;

__attribute__((used)) static u32 mlx5e_choose_lro_timeout(struct mlx5_core_dev *mdev, u32 wanted_timeout)
{
 int i;


 for (i = 0; i < MLX5E_LRO_TIMEOUT_ARR_SIZE - 1; i++)
  if (MLX5_CAP_ETH(mdev, lro_timer_supported_periods[i]) >= wanted_timeout)
   break;

 return MLX5_CAP_ETH(mdev, lro_timer_supported_periods[i]);
}
