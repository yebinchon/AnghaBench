
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int events; } ;
struct mlx5_core_dev {scalar_t__ state; int intf_state_mutex; TYPE_1__ priv; } ;


 scalar_t__ MLX5_DEVICE_STATE_INTERNAL_ERROR ;
 scalar_t__ MLX5_DEVICE_STATE_UNINITIALIZED ;
 int MLX5_DEV_EVENT_SYS_ERROR ;
 scalar_t__ check_fatal_sensors (struct mlx5_core_dev*) ;
 int mlx5_cmd_flush (struct mlx5_core_dev*) ;
 int mlx5_notifier_call_chain (int ,int ,void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mlx5_enter_error_state(struct mlx5_core_dev *dev, bool force)
{
 mutex_lock(&dev->intf_state_mutex);
 if (dev->state == MLX5_DEVICE_STATE_INTERNAL_ERROR)
  goto unlock;
 if (dev->state == MLX5_DEVICE_STATE_UNINITIALIZED) {
  dev->state = MLX5_DEVICE_STATE_INTERNAL_ERROR;
  goto unlock;
 }

 if (check_fatal_sensors(dev) || force) {
  dev->state = MLX5_DEVICE_STATE_INTERNAL_ERROR;
  mlx5_cmd_flush(dev);
 }

 mlx5_notifier_call_chain(dev->priv.events, MLX5_DEV_EVENT_SYS_ERROR, (void *)1);
unlock:
 mutex_unlock(&dev->intf_state_mutex);
}
