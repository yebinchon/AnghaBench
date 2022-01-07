
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_init_hca_param {scalar_t__ steering_mode; int log_mc_entry_sz; } ;
struct mlx4_dev_cap {int fs_max_num_qp_per_entry; int fs_log_max_ucast_qp_range_size; } ;
struct TYPE_2__ {scalar_t__ steering_mode; int num_qp_per_mgm; int fs_log_max_ucast_qp_range_size; } ;
struct mlx4_dev {TYPE_1__ caps; } ;


 scalar_t__ MLX4_STEERING_MODE_DEVICE_MANAGED ;
 int mlx4_dbg (struct mlx4_dev*,char*,int ) ;
 int mlx4_steering_mode_str (scalar_t__) ;

__attribute__((used)) static void slave_adjust_steering_mode(struct mlx4_dev *dev,
           struct mlx4_dev_cap *dev_cap,
           struct mlx4_init_hca_param *hca_param)
{
 dev->caps.steering_mode = hca_param->steering_mode;
 if (dev->caps.steering_mode == MLX4_STEERING_MODE_DEVICE_MANAGED) {
  dev->caps.num_qp_per_mgm = dev_cap->fs_max_num_qp_per_entry;
  dev->caps.fs_log_max_ucast_qp_range_size =
   dev_cap->fs_log_max_ucast_qp_range_size;
 } else
  dev->caps.num_qp_per_mgm =
   4 * ((1 << hca_param->log_mc_entry_sz)/16 - 2);

 mlx4_dbg(dev, "Steering mode is: %s\n",
   mlx4_steering_mode_str(dev->caps.steering_mode));
}
