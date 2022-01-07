
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_qp {void* uid; void* qpn; } ;
struct mlx5_core_dev {int dummy; } ;
struct mlx5_core_dct {int drained; struct mlx5_core_qp mqp; } ;


 int MLX5_CMD_OP_CREATE_DCT ;
 void* MLX5_GET (int ,int *,int ) ;
 int MLX5_RES_DCT ;
 int MLX5_SET (int ,int *,int ,int ) ;
 int _mlx5_core_destroy_dct (struct mlx5_core_dev*,struct mlx5_core_dct*,int) ;
 int create_dct_in ;
 int create_dct_out ;
 int create_resource_common (struct mlx5_core_dev*,struct mlx5_core_qp*,int ) ;
 int dctn ;
 int init_completion (int *) ;
 int mlx5_cmd_exec (struct mlx5_core_dev*,int *,int,int *,int) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int) ;
 int opcode ;
 int uid ;

int mlx5_core_create_dct(struct mlx5_core_dev *dev,
    struct mlx5_core_dct *dct,
    u32 *in, int inlen,
    u32 *out, int outlen)
{
 struct mlx5_core_qp *qp = &dct->mqp;
 int err;

 init_completion(&dct->drained);
 MLX5_SET(create_dct_in, in, opcode, MLX5_CMD_OP_CREATE_DCT);

 err = mlx5_cmd_exec(dev, in, inlen, out, outlen);
 if (err) {
  mlx5_core_warn(dev, "create DCT failed, ret %d\n", err);
  return err;
 }

 qp->qpn = MLX5_GET(create_dct_out, out, dctn);
 qp->uid = MLX5_GET(create_dct_in, in, uid);
 err = create_resource_common(dev, qp, MLX5_RES_DCT);
 if (err)
  goto err_cmd;

 return 0;
err_cmd:
 _mlx5_core_destroy_dct(dev, dct, 0);
 return err;
}
