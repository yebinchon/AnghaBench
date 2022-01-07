
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_lag {int flags; TYPE_1__* pf; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {struct mlx5_core_dev* dev; } ;


 int MLX5_LAG_MODE_FLAGS ;
 int __mlx5_lag_is_roce (struct mlx5_lag*) ;
 int mlx5_cmd_destroy_lag (struct mlx5_core_dev*) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*) ;

__attribute__((used)) static int mlx5_deactivate_lag(struct mlx5_lag *ldev)
{
 struct mlx5_core_dev *dev0 = ldev->pf[0].dev;
 bool roce_lag = __mlx5_lag_is_roce(ldev);
 int err;

 ldev->flags &= ~MLX5_LAG_MODE_FLAGS;

 err = mlx5_cmd_destroy_lag(dev0);
 if (err) {
  if (roce_lag) {
   mlx5_core_err(dev0,
          "Failed to deactivate RoCE LAG; driver restart required\n");
  } else {
   mlx5_core_err(dev0,
          "Failed to deactivate VF LAG; driver restart required\n"
          "Make sure all VFs are unbound prior to VF LAG activation or deactivation\n");
  }
 }

 return err;
}
