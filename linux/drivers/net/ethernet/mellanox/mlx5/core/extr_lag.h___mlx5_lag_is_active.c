
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_lag {int flags; } ;


 int MLX5_LAG_MODE_FLAGS ;

__attribute__((used)) static inline bool
__mlx5_lag_is_active(struct mlx5_lag *ldev)
{
 return !!(ldev->flags & MLX5_LAG_MODE_FLAGS);
}
