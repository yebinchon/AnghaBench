
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_FREE_RES ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int RES_COUNTER ;
 int RES_OP_RESERVE ;
 int __mlx4_counter_free (struct mlx4_dev*,int ) ;
 int mlx4_cmd (struct mlx4_dev*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;
 int set_param_l (int *,int ) ;

void mlx4_counter_free(struct mlx4_dev *dev, u32 idx)
{
 u64 in_param = 0;

 if (mlx4_is_mfunc(dev)) {
  set_param_l(&in_param, idx);
  mlx4_cmd(dev, in_param, RES_COUNTER, RES_OP_RESERVE,
    MLX4_CMD_FREE_RES, MLX4_CMD_TIME_CLASS_A,
    MLX4_CMD_WRAPPED);
  return;
 }
 __mlx4_counter_free(dev, idx);
}
