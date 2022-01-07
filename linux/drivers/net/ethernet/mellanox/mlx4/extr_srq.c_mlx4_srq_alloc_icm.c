
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx4_dev {int dummy; } ;


 int MLX4_CMD_ALLOC_RES ;
 int MLX4_CMD_TIME_CLASS_A ;
 int MLX4_CMD_WRAPPED ;
 int RES_OP_RESERVE_AND_MAP ;
 int RES_SRQ ;
 int __mlx4_srq_alloc_icm (struct mlx4_dev*,int*) ;
 int get_param_l (int *) ;
 int mlx4_cmd_imm (struct mlx4_dev*,int ,int *,int ,int ,int ,int ,int ) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;

__attribute__((used)) static int mlx4_srq_alloc_icm(struct mlx4_dev *dev, int *srqn)
{
 u64 out_param;
 int err;

 if (mlx4_is_mfunc(dev)) {
  err = mlx4_cmd_imm(dev, 0, &out_param, RES_SRQ,
       RES_OP_RESERVE_AND_MAP,
       MLX4_CMD_ALLOC_RES,
       MLX4_CMD_TIME_CLASS_A, MLX4_CMD_WRAPPED);
  if (!err)
   *srqn = get_param_l(&out_param);

  return err;
 }
 return __mlx4_srq_alloc_icm(dev, srqn);
}
