
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_core_dev {scalar_t__ state; int intf_state_mutex; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 unsigned long MLX5_CRDUMP_WAIT_MS ;
 scalar_t__ MLX5_DEVICE_STATE_INTERNAL_ERROR ;
 unsigned long MLX5_FW_RESET_WAIT_MS ;
 scalar_t__ MLX5_NIC_IFC_DISABLED ;
 scalar_t__ MLX5_SENSOR_FW_SYND_RFR ;
 scalar_t__ check_fatal_sensors (struct mlx5_core_dev*) ;
 int cond_resched () ;
 int dev_err (int *,char*,scalar_t__,unsigned long) ;
 unsigned long jiffies ;
 int lock_sem_sw_reset (struct mlx5_core_dev*,int) ;
 int mlx5_core_err (struct mlx5_core_dev*,char*) ;
 scalar_t__ mlx5_get_nic_state (struct mlx5_core_dev*) ;
 unsigned long msecs_to_jiffies (unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reset_fw_if_needed (struct mlx5_core_dev*) ;
 int time_after (unsigned long,unsigned long) ;

void mlx5_error_sw_reset(struct mlx5_core_dev *dev)
{
 unsigned long end, delay_ms = MLX5_FW_RESET_WAIT_MS;
 int lock = -EBUSY;

 mutex_lock(&dev->intf_state_mutex);
 if (dev->state != MLX5_DEVICE_STATE_INTERNAL_ERROR)
  goto unlock;

 mlx5_core_err(dev, "start\n");

 if (check_fatal_sensors(dev) == MLX5_SENSOR_FW_SYND_RFR) {

  lock = lock_sem_sw_reset(dev, 1);

  if (lock == -EBUSY) {
   delay_ms = MLX5_CRDUMP_WAIT_MS;
   goto recover_from_sw_reset;
  }

  reset_fw_if_needed(dev);
 }

recover_from_sw_reset:

 end = jiffies + msecs_to_jiffies(delay_ms);
 do {
  if (mlx5_get_nic_state(dev) == MLX5_NIC_IFC_DISABLED)
   break;

  cond_resched();
 } while (!time_after(jiffies, end));

 if (mlx5_get_nic_state(dev) != MLX5_NIC_IFC_DISABLED) {
  dev_err(&dev->pdev->dev, "NIC IFC still %d after %lums.\n",
   mlx5_get_nic_state(dev), delay_ms);
 }


 if (!lock)
  lock_sem_sw_reset(dev, 0);

 mlx5_core_err(dev, "end\n");

unlock:
 mutex_unlock(&dev->intf_state_mutex);
}
