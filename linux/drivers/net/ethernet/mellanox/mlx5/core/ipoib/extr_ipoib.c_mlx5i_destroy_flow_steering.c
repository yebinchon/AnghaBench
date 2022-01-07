
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inner_ttc; int ttc; } ;
struct mlx5e_priv {TYPE_1__ fs; } ;


 int mlx5e_arfs_destroy_tables (struct mlx5e_priv*) ;
 int mlx5e_destroy_inner_ttc_table (struct mlx5e_priv*,int *) ;
 int mlx5e_destroy_ttc_table (struct mlx5e_priv*,int *) ;

__attribute__((used)) static void mlx5i_destroy_flow_steering(struct mlx5e_priv *priv)
{
 mlx5e_destroy_ttc_table(priv, &priv->fs.ttc);
 mlx5e_destroy_inner_ttc_table(priv, &priv->fs.inner_ttc);
 mlx5e_arfs_destroy_tables(priv);
}
