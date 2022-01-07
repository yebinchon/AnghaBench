
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mlx5_core_dev {int dummy; } ;


 scalar_t__ MLX5_SPECIAL_VPORTS (struct mlx5_core_dev const*) ;
 scalar_t__ mlx5_core_max_vfs (struct mlx5_core_dev const*) ;

u16 mlx5_eswitch_get_total_vports(const struct mlx5_core_dev *dev)
{
 return MLX5_SPECIAL_VPORTS(dev) + mlx5_core_max_vfs(dev);
}
