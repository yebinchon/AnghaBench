
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int intf_state; } ;


 int EIO ;
 int MLX5_INTERFACE_STATE_UP ;
 int MLX5_RECOVERY_WAIT_MSECS ;
 scalar_t__ check_fatal_sensors (struct mlx5_core_dev*) ;
 unsigned long jiffies ;
 int mlx5_core_err (struct mlx5_core_dev*,char*) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int mlx5_handle_bad_state (struct mlx5_core_dev*) ;
 int mlx5_recover_device (struct mlx5_core_dev*) ;
 unsigned long msecs_to_jiffies (int ) ;
 int msleep (int) ;
 scalar_t__ sensor_pci_not_working (struct mlx5_core_dev*) ;
 int test_bit (int ,int *) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int mlx5_health_try_recover(struct mlx5_core_dev *dev)
{
 unsigned long end;

 mlx5_core_warn(dev, "handling bad device here\n");
 mlx5_handle_bad_state(dev);
 end = jiffies + msecs_to_jiffies(MLX5_RECOVERY_WAIT_MSECS);
 while (sensor_pci_not_working(dev)) {
  if (time_after(jiffies, end)) {
   mlx5_core_err(dev,
          "health recovery flow aborted, PCI reads still not working\n");
   return -EIO;
  }
  msleep(100);
 }

 mlx5_core_err(dev, "starting health recovery flow\n");
 mlx5_recover_device(dev);
 if (!test_bit(MLX5_INTERFACE_STATE_UP, &dev->intf_state) ||
     check_fatal_sensors(dev)) {
  mlx5_core_err(dev, "health recovery failed\n");
  return -EIO;
 }
 return 0;
}
