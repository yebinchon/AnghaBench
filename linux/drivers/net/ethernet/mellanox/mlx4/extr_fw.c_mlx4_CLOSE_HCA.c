
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_CLOSE_HCA ;
 int MLX4_CMD_NATIVE ;
 int MLX4_CMD_TIME_CLASS_C ;
 int mlx4_cmd (struct mlx4_dev*,int ,int ,int,int ,int ,int ) ;

int mlx4_CLOSE_HCA(struct mlx4_dev *dev, int panic)
{
 return mlx4_cmd(dev, 0, 0, panic, MLX4_CMD_CLOSE_HCA,
   MLX4_CMD_TIME_CLASS_C, MLX4_CMD_NATIVE);
}
