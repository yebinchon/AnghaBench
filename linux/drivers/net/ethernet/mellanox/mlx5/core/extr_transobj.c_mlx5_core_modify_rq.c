
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
typedef int out ;


 int MLX5_CMD_OP_MODIFY_RQ ;
 int MLX5_SET (int ,int *,int ,int ) ;
 int MLX5_ST_SZ_DW (int ) ;
 int memset (int *,int ,int) ;
 int mlx5_cmd_exec (struct mlx5_core_dev*,int *,int,int *,int) ;
 int modify_rq_in ;
 int modify_rq_out ;
 int opcode ;

int mlx5_core_modify_rq(struct mlx5_core_dev *dev, u32 rqn, u32 *in, int inlen)
{
 u32 out[MLX5_ST_SZ_DW(modify_rq_out)];

 MLX5_SET(modify_rq_in, in, rqn, rqn);
 MLX5_SET(modify_rq_in, in, opcode, MLX5_CMD_OP_MODIFY_RQ);

 memset(out, 0, sizeof(out));
 return mlx5_cmd_exec(dev, in, inlen, out, sizeof(out));
}
