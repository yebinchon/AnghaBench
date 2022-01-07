
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;


 int arfs_del_rules (struct mlx5e_priv*) ;
 int arfs_disable (struct mlx5e_priv*) ;

int mlx5e_arfs_disable(struct mlx5e_priv *priv)
{
 arfs_del_rules(priv);

 return arfs_disable(priv);
}
