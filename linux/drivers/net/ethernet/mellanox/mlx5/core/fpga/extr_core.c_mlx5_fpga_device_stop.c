
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_fpga_device {scalar_t__ state; scalar_t__ last_oper_image; int fpga_qp_err_nb; int mdev; int fpga_err_nb; int state_lock; } ;
struct mlx5_core_dev {struct mlx5_fpga_device* fpga; } ;
struct TYPE_2__ {int max_num_qps; } ;


 unsigned int MLX5_CAP_FPGA (struct mlx5_core_dev*,int ) ;
 int MLX5_FPGA_CTRL_OPERATION_SANDBOX_BYPASS_ON ;
 scalar_t__ MLX5_FPGA_IMAGE_USER ;
 scalar_t__ MLX5_FPGA_STATUS_NONE ;
 scalar_t__ MLX5_FPGA_STATUS_SUCCESS ;
 int mlx5_core_unreserve_gids (struct mlx5_core_dev*,unsigned int) ;
 int mlx5_eq_notifier_unregister (int ,int *) ;
 int mlx5_fpga_conn_device_cleanup (struct mlx5_fpga_device*) ;
 int mlx5_fpga_ctrl_op (struct mlx5_core_dev*,int ) ;
 int mlx5_fpga_err (struct mlx5_fpga_device*,char*,int) ;
 TYPE_1__ shell_caps ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void mlx5_fpga_device_stop(struct mlx5_core_dev *mdev)
{
 struct mlx5_fpga_device *fdev = mdev->fpga;
 unsigned int max_num_qps;
 unsigned long flags;
 int err;

 if (!fdev)
  return;

 spin_lock_irqsave(&fdev->state_lock, flags);
 if (fdev->state != MLX5_FPGA_STATUS_SUCCESS) {
  spin_unlock_irqrestore(&fdev->state_lock, flags);
  return;
 }
 fdev->state = MLX5_FPGA_STATUS_NONE;
 spin_unlock_irqrestore(&fdev->state_lock, flags);

 if (fdev->last_oper_image == MLX5_FPGA_IMAGE_USER) {
  err = mlx5_fpga_ctrl_op(mdev, MLX5_FPGA_CTRL_OPERATION_SANDBOX_BYPASS_ON);
  if (err)
   mlx5_fpga_err(fdev, "Failed to re-set SBU bypass on: %d\n",
          err);
 }

 mlx5_fpga_conn_device_cleanup(fdev);
 mlx5_eq_notifier_unregister(fdev->mdev, &fdev->fpga_err_nb);
 mlx5_eq_notifier_unregister(fdev->mdev, &fdev->fpga_qp_err_nb);

 max_num_qps = MLX5_CAP_FPGA(mdev, shell_caps.max_num_qps);
 mlx5_core_unreserve_gids(mdev, max_num_qps);
}
