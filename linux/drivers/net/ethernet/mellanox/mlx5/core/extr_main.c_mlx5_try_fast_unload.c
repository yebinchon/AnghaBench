
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {scalar_t__ state; } ;


 int EAGAIN ;
 int EOPNOTSUPP ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int) ;
 scalar_t__ MLX5_DEVICE_STATE_INTERNAL_ERROR ;
 int mlx5_cmd_fast_teardown_hca (struct mlx5_core_dev*) ;
 int mlx5_cmd_force_teardown_hca (struct mlx5_core_dev*) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,...) ;
 int mlx5_core_eq_free_irqs (struct mlx5_core_dev*) ;
 int mlx5_drain_health_wq (struct mlx5_core_dev*) ;
 int mlx5_enter_error_state (struct mlx5_core_dev*,int) ;
 int mlx5_start_health_poll (struct mlx5_core_dev*) ;
 int mlx5_stop_health_poll (struct mlx5_core_dev*,int) ;

__attribute__((used)) static int mlx5_try_fast_unload(struct mlx5_core_dev *dev)
{
 bool fast_teardown = 0, force_teardown = 0;
 int ret = 1;

 fast_teardown = MLX5_CAP_GEN(dev, fast_teardown);
 force_teardown = MLX5_CAP_GEN(dev, force_teardown);

 mlx5_core_dbg(dev, "force teardown firmware support=%d\n", force_teardown);
 mlx5_core_dbg(dev, "fast teardown firmware support=%d\n", fast_teardown);

 if (!fast_teardown && !force_teardown)
  return -EOPNOTSUPP;

 if (dev->state == MLX5_DEVICE_STATE_INTERNAL_ERROR) {
  mlx5_core_dbg(dev, "Device in internal error state, giving up\n");
  return -EAGAIN;
 }




 mlx5_drain_health_wq(dev);
 mlx5_stop_health_poll(dev, 0);

 ret = mlx5_cmd_fast_teardown_hca(dev);
 if (!ret)
  goto succeed;

 ret = mlx5_cmd_force_teardown_hca(dev);
 if (!ret)
  goto succeed;

 mlx5_core_dbg(dev, "Firmware couldn't do fast unload error: %d\n", ret);
 mlx5_start_health_poll(dev);
 return ret;

succeed:
 mlx5_enter_error_state(dev, 1);






 mlx5_core_eq_free_irqs(dev);

 return 0;
}
