
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int * inner_indir_tir; int mdev; int * indir_tir; } ;


 int MLX5E_NUM_INDIR_TIRS ;
 int mlx5e_destroy_tir (int ,int *) ;
 int mlx5e_tunnel_inner_ft_supported (int ) ;

void mlx5e_destroy_indirect_tirs(struct mlx5e_priv *priv, bool inner_ttc)
{
 int i;

 for (i = 0; i < MLX5E_NUM_INDIR_TIRS; i++)
  mlx5e_destroy_tir(priv->mdev, &priv->indir_tir[i]);

 if (!inner_ttc || !mlx5e_tunnel_inner_ft_supported(priv->mdev))
  return;

 for (i = 0; i < MLX5E_NUM_INDIR_TIRS; i++)
  mlx5e_destroy_tir(priv->mdev, &priv->inner_indir_tir[i]);
}
