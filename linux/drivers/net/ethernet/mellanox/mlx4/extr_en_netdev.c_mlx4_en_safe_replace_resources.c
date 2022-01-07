
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_priv {int dummy; } ;


 int mlx4_en_free_resources (struct mlx4_en_priv*) ;
 int mlx4_en_update_priv (struct mlx4_en_priv*,struct mlx4_en_priv*) ;

void mlx4_en_safe_replace_resources(struct mlx4_en_priv *priv,
        struct mlx4_en_priv *tmp)
{
 mlx4_en_free_resources(priv);
 mlx4_en_update_priv(priv, tmp);
}
