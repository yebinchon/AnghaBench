
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_6__ {int max_cmds; int slave_cmd_mutex; } ;
struct TYPE_5__ {TYPE_1__* comm; int vhcr_dma; } ;
struct mlx4_priv {TYPE_3__ cmd; TYPE_2__ mfunc; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_4__ {int slave_read; } ;


 int EIO ;
 int EPROBE_DEFER ;
 int MLX4_COMM_CMD_NA_OP ;
 int MLX4_COMM_CMD_RESET ;
 int MLX4_COMM_CMD_VHCR0 ;
 int MLX4_COMM_CMD_VHCR1 ;
 int MLX4_COMM_CMD_VHCR2 ;
 int MLX4_COMM_CMD_VHCR_EN ;
 scalar_t__ MLX4_COMM_GET_IF_REV (int ) ;
 int MLX4_COMM_TIME ;
 int MLX4_DELAY_RESET_SLAVE ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ mlx4_comm_check_offline (struct mlx4_dev*) ;
 int mlx4_comm_cmd (struct mlx4_dev*,int ,int,int ,int ) ;
 int mlx4_comm_get_version () ;
 int mlx4_err (struct mlx4_dev*,char*) ;
 struct mlx4_priv* mlx4_priv (struct mlx4_dev*) ;
 int mlx4_reset_vf_support (struct mlx4_dev*) ;
 int mlx4_warn (struct mlx4_dev*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pf_loading ;
 int readl (int *) ;
 int swab32 (int ) ;

__attribute__((used)) static int mlx4_init_slave(struct mlx4_dev *dev)
{
 struct mlx4_priv *priv = mlx4_priv(dev);
 u64 dma = (u64) priv->mfunc.vhcr_dma;
 int ret_from_reset = 0;
 u32 slave_read;
 u32 cmd_channel_ver;

 if (atomic_read(&pf_loading)) {
  mlx4_warn(dev, "PF is not ready - Deferring probe\n");
  return -EPROBE_DEFER;
 }

 mutex_lock(&priv->cmd.slave_cmd_mutex);
 priv->cmd.max_cmds = 1;
 if (mlx4_comm_check_offline(dev)) {
  mlx4_err(dev, "PF is not responsive, skipping initialization\n");
  goto err_offline;
 }

 mlx4_reset_vf_support(dev);
 mlx4_warn(dev, "Sending reset\n");
 ret_from_reset = mlx4_comm_cmd(dev, MLX4_COMM_CMD_RESET, 0,
           MLX4_COMM_CMD_NA_OP, MLX4_COMM_TIME);


 if (ret_from_reset) {
  if (MLX4_DELAY_RESET_SLAVE == ret_from_reset) {
   mlx4_warn(dev, "slave is currently in the middle of FLR - Deferring probe\n");
   mutex_unlock(&priv->cmd.slave_cmd_mutex);
   return -EPROBE_DEFER;
  } else
   goto err;
 }



 slave_read = swab32(readl(&priv->mfunc.comm->slave_read));
 cmd_channel_ver = mlx4_comm_get_version();

 if (MLX4_COMM_GET_IF_REV(cmd_channel_ver) !=
  MLX4_COMM_GET_IF_REV(slave_read)) {
  mlx4_err(dev, "slave driver version is not supported by the master\n");
  goto err;
 }

 mlx4_warn(dev, "Sending vhcr0\n");
 if (mlx4_comm_cmd(dev, MLX4_COMM_CMD_VHCR0, dma >> 48,
        MLX4_COMM_CMD_NA_OP, MLX4_COMM_TIME))
  goto err;
 if (mlx4_comm_cmd(dev, MLX4_COMM_CMD_VHCR1, dma >> 32,
        MLX4_COMM_CMD_NA_OP, MLX4_COMM_TIME))
  goto err;
 if (mlx4_comm_cmd(dev, MLX4_COMM_CMD_VHCR2, dma >> 16,
        MLX4_COMM_CMD_NA_OP, MLX4_COMM_TIME))
  goto err;
 if (mlx4_comm_cmd(dev, MLX4_COMM_CMD_VHCR_EN, dma,
     MLX4_COMM_CMD_NA_OP, MLX4_COMM_TIME))
  goto err;

 mutex_unlock(&priv->cmd.slave_cmd_mutex);
 return 0;

err:
 mlx4_comm_cmd(dev, MLX4_COMM_CMD_RESET, 0, MLX4_COMM_CMD_NA_OP, 0);
err_offline:
 mutex_unlock(&priv->cmd.slave_cmd_mutex);
 return -EIO;
}
