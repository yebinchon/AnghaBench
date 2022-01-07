
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx5_lag {int flags; TYPE_1__* pf; } ;
struct mlx5_core_dev {int dummy; } ;
struct lag_tracker {int dummy; } ;
struct TYPE_2__ {struct mlx5_core_dev* dev; } ;


 int MLX5_LAG_FLAG_ROCE ;
 int mlx5_core_err (struct mlx5_core_dev*,char*) ;
 int mlx5_create_lag (struct mlx5_lag*,struct lag_tracker*) ;

int mlx5_activate_lag(struct mlx5_lag *ldev,
        struct lag_tracker *tracker,
        u8 flags)
{
 bool roce_lag = !!(flags & MLX5_LAG_FLAG_ROCE);
 struct mlx5_core_dev *dev0 = ldev->pf[0].dev;
 int err;

 err = mlx5_create_lag(ldev, tracker);
 if (err) {
  if (roce_lag) {
   mlx5_core_err(dev0,
          "Failed to activate RoCE LAG\n");
  } else {
   mlx5_core_err(dev0,
          "Failed to activate VF LAG\n"
          "Make sure all VFs are unbound prior to VF LAG activation or deactivation\n");
  }
  return err;
 }

 ldev->flags |= flags;
 return 0;
}
