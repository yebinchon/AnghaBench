
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_tir {int dummy; } ;
struct mlx5e_priv {int max_nch; int mdev; } ;


 int mlx5e_destroy_tir (int ,struct mlx5e_tir*) ;

void mlx5e_destroy_direct_tirs(struct mlx5e_priv *priv, struct mlx5e_tir *tirs)
{
 int i;

 for (i = 0; i < priv->max_nch; i++)
  mlx5e_destroy_tir(priv->mdev, &tirs[i]);
}
