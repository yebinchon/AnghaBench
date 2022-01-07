
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_dev_persistent {int state; int device_state_mutex; struct mlx4_dev* dev; } ;
struct mlx4_dev {TYPE_1__* persist; } ;
struct TYPE_2__ {int state; int pdev; } ;


 int BUG_ON (int) ;
 int MLX4_DEVICE_STATE_INTERNAL_ERROR ;
 int MLX4_DEV_EVENT_CATASTROPHIC_ERROR ;
 int mlx4_cmd_wake_completions (struct mlx4_dev*) ;
 int mlx4_crdump_collect (struct mlx4_dev*) ;
 int mlx4_dispatch_event (struct mlx4_dev*,int ,int ) ;
 int mlx4_err (struct mlx4_dev*,char*) ;
 int mlx4_internal_err_reset ;
 scalar_t__ mlx4_is_slave (struct mlx4_dev*) ;
 int mlx4_reset_master (struct mlx4_dev*) ;
 int mlx4_reset_slave (struct mlx4_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_channel_offline (int ) ;

void mlx4_enter_error_state(struct mlx4_dev_persistent *persist)
{
 int err;
 struct mlx4_dev *dev;

 if (!mlx4_internal_err_reset)
  return;

 mutex_lock(&persist->device_state_mutex);
 if (persist->state & MLX4_DEVICE_STATE_INTERNAL_ERROR)
  goto out;

 dev = persist->dev;
 mlx4_err(dev, "device is going to be reset\n");
 if (mlx4_is_slave(dev)) {
  err = mlx4_reset_slave(dev);
 } else {
  mlx4_crdump_collect(dev);
  err = mlx4_reset_master(dev);
 }

 if (!err) {
  mlx4_err(dev, "device was reset successfully\n");
 } else {



  if (!pci_channel_offline(dev->persist->pdev))
   BUG_ON(1);
 }
 dev->persist->state |= MLX4_DEVICE_STATE_INTERNAL_ERROR;
 mutex_unlock(&persist->device_state_mutex);


 mlx4_dispatch_event(dev, MLX4_DEV_EVENT_CATASTROPHIC_ERROR, 0);
 mlx4_cmd_wake_completions(dev);
 return;

out:
 mutex_unlock(&persist->device_state_mutex);
}
