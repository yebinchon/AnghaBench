
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_CMD_OP_ACCESS_REG ;
 int MLX5_SET (int ,int *,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int access_register_in ;
 int access_register_out ;
 int argument ;
 int kvfree (int *) ;
 int * kvzalloc (int,int ) ;
 int memcpy (void*,void*,int) ;
 int mlx5_cmd_exec (struct mlx5_core_dev*,int *,int,int *,int) ;
 int op_mod ;
 int opcode ;
 int register_data ;
 int register_id ;

int mlx5_core_access_reg(struct mlx5_core_dev *dev, void *data_in,
    int size_in, void *data_out, int size_out,
    u16 reg_id, int arg, int write)
{
 int outlen = MLX5_ST_SZ_BYTES(access_register_out) + size_out;
 int inlen = MLX5_ST_SZ_BYTES(access_register_in) + size_in;
 int err = -ENOMEM;
 u32 *out = ((void*)0);
 u32 *in = ((void*)0);
 void *data;

 in = kvzalloc(inlen, GFP_KERNEL);
 out = kvzalloc(outlen, GFP_KERNEL);
 if (!in || !out)
  goto out;

 data = MLX5_ADDR_OF(access_register_in, in, register_data);
 memcpy(data, data_in, size_in);

 MLX5_SET(access_register_in, in, opcode, MLX5_CMD_OP_ACCESS_REG);
 MLX5_SET(access_register_in, in, op_mod, !write);
 MLX5_SET(access_register_in, in, argument, arg);
 MLX5_SET(access_register_in, in, register_id, reg_id);

 err = mlx5_cmd_exec(dev, in, inlen, out, outlen);
 if (err)
  goto out;

 data = MLX5_ADDR_OF(access_register_out, out, register_data);
 memcpy(data_out, data, size_out);

out:
 kvfree(out);
 kvfree(in);
 return err;
}
