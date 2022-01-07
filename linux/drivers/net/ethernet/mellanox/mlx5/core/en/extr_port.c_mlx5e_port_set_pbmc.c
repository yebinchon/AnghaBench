
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5_REG_PBMC ;
 int MLX5_SET (int ,void*,int ,int) ;
 int MLX5_ST_SZ_BYTES (int ) ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int local_port ;
 int mlx5_core_access_reg (struct mlx5_core_dev*,void*,int,void*,int,int ,int ,int) ;
 int pbmc_reg ;

int mlx5e_port_set_pbmc(struct mlx5_core_dev *mdev, void *in)
{
 int sz = MLX5_ST_SZ_BYTES(pbmc_reg);
 void *out;
 int err;

 out = kzalloc(sz, GFP_KERNEL);
 if (!out)
  return -ENOMEM;

 MLX5_SET(pbmc_reg, in, local_port, 1);
 err = mlx5_core_access_reg(mdev, in, sz, out, sz, MLX5_REG_PBMC, 0, 1);

 kfree(out);
 return err;
}
