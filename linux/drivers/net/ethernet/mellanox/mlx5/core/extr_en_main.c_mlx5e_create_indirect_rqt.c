
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_rqt {int dummy; } ;
struct mlx5e_priv {int mdev; struct mlx5e_rqt indir_rqt; } ;


 int MLX5E_INDIR_RQT_SIZE ;
 int mlx5_core_warn (int ,char*,int) ;
 int mlx5e_create_rqt (struct mlx5e_priv*,int ,struct mlx5e_rqt*) ;

int mlx5e_create_indirect_rqt(struct mlx5e_priv *priv)
{
 struct mlx5e_rqt *rqt = &priv->indir_rqt;
 int err;

 err = mlx5e_create_rqt(priv, MLX5E_INDIR_RQT_SIZE, rqt);
 if (err)
  mlx5_core_warn(priv->mdev, "create indirect rqts failed, %d\n", err);
 return err;
}
