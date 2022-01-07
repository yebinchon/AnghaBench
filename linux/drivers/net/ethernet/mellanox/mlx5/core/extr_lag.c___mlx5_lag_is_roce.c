
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_lag {int flags; } ;


 int MLX5_LAG_FLAG_ROCE ;

__attribute__((used)) static bool __mlx5_lag_is_roce(struct mlx5_lag *ldev)
{
 return !!(ldev->flags & MLX5_LAG_FLAG_ROCE);
}
