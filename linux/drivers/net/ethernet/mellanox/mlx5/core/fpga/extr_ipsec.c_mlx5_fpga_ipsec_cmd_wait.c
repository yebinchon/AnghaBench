
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fpga_ipsec_cmd_context {scalar_t__ status; int status_code; int dev; int complete; } ;


 int EIO ;
 int ETIMEDOUT ;
 int MLX5_FPGA_CMD_TIMEOUT_MSEC ;
 scalar_t__ MLX5_FPGA_IPSEC_CMD_COMPLETE ;
 int mlx5_fpga_warn (int ,char*) ;
 unsigned long msecs_to_jiffies (int ) ;
 int wait_for_completion_timeout (int *,unsigned long) ;

__attribute__((used)) static int mlx5_fpga_ipsec_cmd_wait(void *ctx)
{
 struct mlx5_fpga_ipsec_cmd_context *context = ctx;
 unsigned long timeout =
  msecs_to_jiffies(MLX5_FPGA_CMD_TIMEOUT_MSEC);
 int res;

 res = wait_for_completion_timeout(&context->complete, timeout);
 if (!res) {
  mlx5_fpga_warn(context->dev, "Failure waiting for IPSec command response\n");
  return -ETIMEDOUT;
 }

 if (context->status == MLX5_FPGA_IPSEC_CMD_COMPLETE)
  res = context->status_code;
 else
  res = -EIO;

 return res;
}
