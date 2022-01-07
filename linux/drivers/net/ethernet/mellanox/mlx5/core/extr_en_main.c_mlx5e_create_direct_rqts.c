
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_tir {int rqt; } ;
struct mlx5e_priv {int max_nch; int mdev; } ;


 int mlx5_core_warn (int ,char*,int) ;
 int mlx5e_create_rqt (struct mlx5e_priv*,int,int *) ;
 int mlx5e_destroy_rqt (struct mlx5e_priv*,int *) ;
 scalar_t__ unlikely (int) ;

int mlx5e_create_direct_rqts(struct mlx5e_priv *priv, struct mlx5e_tir *tirs)
{
 int err;
 int ix;

 for (ix = 0; ix < priv->max_nch; ix++) {
  err = mlx5e_create_rqt(priv, 1 , &tirs[ix].rqt);
  if (unlikely(err))
   goto err_destroy_rqts;
 }

 return 0;

err_destroy_rqts:
 mlx5_core_warn(priv->mdev, "create rqts failed, %d\n", err);
 for (ix--; ix >= 0; ix--)
  mlx5e_destroy_rqt(priv, &tirs[ix].rqt);

 return err;
}
