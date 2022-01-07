
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_tir {int rqt; } ;
struct mlx5e_priv {int max_nch; } ;


 int mlx5e_destroy_rqt (struct mlx5e_priv*,int *) ;

void mlx5e_destroy_direct_rqts(struct mlx5e_priv *priv, struct mlx5e_tir *tirs)
{
 int i;

 for (i = 0; i < priv->max_nch; i++)
  mlx5e_destroy_rqt(priv, &tirs[i].rqt);
}
