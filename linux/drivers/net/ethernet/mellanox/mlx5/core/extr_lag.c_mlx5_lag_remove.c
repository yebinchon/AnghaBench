
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ notifier_call; } ;
struct mlx5_lag {int bond_work; TYPE_2__ nb; TYPE_1__* pf; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ dev; } ;


 int MLX5_MAX_PORTS ;
 scalar_t__ __mlx5_lag_is_active (struct mlx5_lag*) ;
 int cancel_delayed_work_sync (int *) ;
 int mlx5_deactivate_lag (struct mlx5_lag*) ;
 int mlx5_lag_dev_free (struct mlx5_lag*) ;
 struct mlx5_lag* mlx5_lag_dev_get (struct mlx5_core_dev*) ;
 int mlx5_lag_dev_remove_pf (struct mlx5_lag*,struct mlx5_core_dev*) ;
 int mlx5_lag_mp_cleanup (struct mlx5_lag*) ;
 int unregister_netdevice_notifier (TYPE_2__*) ;

void mlx5_lag_remove(struct mlx5_core_dev *dev)
{
 struct mlx5_lag *ldev;
 int i;

 ldev = mlx5_lag_dev_get(dev);
 if (!ldev)
  return;

 if (__mlx5_lag_is_active(ldev))
  mlx5_deactivate_lag(ldev);

 mlx5_lag_dev_remove_pf(ldev, dev);

 for (i = 0; i < MLX5_MAX_PORTS; i++)
  if (ldev->pf[i].dev)
   break;

 if (i == MLX5_MAX_PORTS) {
  if (ldev->nb.notifier_call)
   unregister_netdevice_notifier(&ldev->nb);
  mlx5_lag_mp_cleanup(ldev);
  cancel_delayed_work_sync(&ldev->bond_work);
  mlx5_lag_dev_free(ldev);
 }
}
