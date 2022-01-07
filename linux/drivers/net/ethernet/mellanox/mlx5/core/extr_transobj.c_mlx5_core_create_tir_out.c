
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5_CMD_OP_CREATE_TIR ;
 int MLX5_SET (int ,int *,int ,int ) ;
 int create_tir_in ;
 int mlx5_cmd_exec (struct mlx5_core_dev*,int *,int,int *,int) ;
 int opcode ;

int mlx5_core_create_tir_out(struct mlx5_core_dev *dev,
        u32 *in, int inlen,
        u32 *out, int outlen)
{
 MLX5_SET(create_tir_in, in, opcode, MLX5_CMD_OP_CREATE_TIR);

 return mlx5_cmd_exec(dev, in, inlen, out, outlen);
}
