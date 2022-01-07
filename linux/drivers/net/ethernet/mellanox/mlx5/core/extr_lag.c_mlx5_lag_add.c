
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int * notifier_call; } ;
struct mlx5_lag {TYPE_2__ nb; } ;
struct TYPE_3__ {struct mlx5_lag* lag; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;


 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 scalar_t__ MLX5_MAX_PORTS ;
 int lag_master ;
 int mlx5_core_err (struct mlx5_core_dev*,char*,...) ;
 struct mlx5_core_dev* mlx5_get_next_phys_dev (struct mlx5_core_dev*) ;
 int mlx5_lag_dev_add_pf (struct mlx5_lag*,struct mlx5_core_dev*,struct net_device*) ;
 struct mlx5_lag* mlx5_lag_dev_alloc () ;
 int mlx5_lag_mp_init (struct mlx5_lag*) ;
 int * mlx5_lag_netdev_event ;
 int num_lag_ports ;
 scalar_t__ register_netdevice_notifier (TYPE_2__*) ;
 int vport_group_manager ;

void mlx5_lag_add(struct mlx5_core_dev *dev, struct net_device *netdev)
{
 struct mlx5_lag *ldev = ((void*)0);
 struct mlx5_core_dev *tmp_dev;
 int err;

 if (!MLX5_CAP_GEN(dev, vport_group_manager) ||
     !MLX5_CAP_GEN(dev, lag_master) ||
     (MLX5_CAP_GEN(dev, num_lag_ports) != MLX5_MAX_PORTS))
  return;

 tmp_dev = mlx5_get_next_phys_dev(dev);
 if (tmp_dev)
  ldev = tmp_dev->priv.lag;

 if (!ldev) {
  ldev = mlx5_lag_dev_alloc();
  if (!ldev) {
   mlx5_core_err(dev, "Failed to alloc lag dev\n");
   return;
  }
 }

 mlx5_lag_dev_add_pf(ldev, dev, netdev);

 if (!ldev->nb.notifier_call) {
  ldev->nb.notifier_call = mlx5_lag_netdev_event;
  if (register_netdevice_notifier(&ldev->nb)) {
   ldev->nb.notifier_call = ((void*)0);
   mlx5_core_err(dev, "Failed to register LAG netdev notifier\n");
  }
 }

 err = mlx5_lag_mp_init(ldev);
 if (err)
  mlx5_core_err(dev, "Failed to init multipath lag err=%d\n",
         err);
}
