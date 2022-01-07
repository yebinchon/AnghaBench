
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int embedded_cpu; } ;
struct mlx5_core_dev {int intf_state_mutex; int state; int intf_state; TYPE_1__ caps; } ;


 int MLX5_DEVICE_STATE_INTERNAL_ERROR ;
 int MLX5_DEVICE_STATE_UP ;
 int MLX5_INTERFACE_STATE_UP ;
 int mlx5_attach_device (struct mlx5_core_dev*) ;
 int mlx5_cleanup_once (struct mlx5_core_dev*) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*,...) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 scalar_t__ mlx5_device_registered (struct mlx5_core_dev*) ;
 int mlx5_function_setup (struct mlx5_core_dev*,int) ;
 int mlx5_function_teardown (struct mlx5_core_dev*,int) ;
 int mlx5_init_once (struct mlx5_core_dev*) ;
 int mlx5_load (struct mlx5_core_dev*) ;
 int mlx5_read_embedded_cpu (struct mlx5_core_dev*) ;
 int mlx5_register_device (struct mlx5_core_dev*) ;
 int mlx5_unload (struct mlx5_core_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int mlx5_load_one(struct mlx5_core_dev *dev, bool boot)
{
 int err = 0;

 dev->caps.embedded_cpu = mlx5_read_embedded_cpu(dev);
 mutex_lock(&dev->intf_state_mutex);
 if (test_bit(MLX5_INTERFACE_STATE_UP, &dev->intf_state)) {
  mlx5_core_warn(dev, "interface is up, NOP\n");
  goto out;
 }

 dev->state = MLX5_DEVICE_STATE_UP;

 err = mlx5_function_setup(dev, boot);
 if (err)
  goto out;

 if (boot) {
  err = mlx5_init_once(dev);
  if (err) {
   mlx5_core_err(dev, "sw objs init failed\n");
   goto function_teardown;
  }
 }

 err = mlx5_load(dev);
 if (err)
  goto err_load;

 if (mlx5_device_registered(dev)) {
  mlx5_attach_device(dev);
 } else {
  err = mlx5_register_device(dev);
  if (err) {
   mlx5_core_err(dev, "register device failed %d\n", err);
   goto err_reg_dev;
  }
 }

 set_bit(MLX5_INTERFACE_STATE_UP, &dev->intf_state);
out:
 mutex_unlock(&dev->intf_state_mutex);

 return err;

err_reg_dev:
 mlx5_unload(dev);
err_load:
 if (boot)
  mlx5_cleanup_once(dev);
function_teardown:
 mlx5_function_teardown(dev, boot);
 dev->state = MLX5_DEVICE_STATE_INTERNAL_ERROR;
 mutex_unlock(&dev->intf_state_mutex);

 return err;
}
