
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_SYNC_TPT ;
 int MLX4_CMD_TIME_CLASS_A ;
 int mlx4_cmd (struct mlx4_dev*,int ,int ,int ,int ,int ,int ) ;

int mlx4_SYNC_TPT(struct mlx4_dev *dev)
{
 return mlx4_cmd(dev, 0, 0, 0, MLX4_CMD_SYNC_TPT,
   MLX4_CMD_TIME_CLASS_A, MLX4_CMD_NATIVE);
}
