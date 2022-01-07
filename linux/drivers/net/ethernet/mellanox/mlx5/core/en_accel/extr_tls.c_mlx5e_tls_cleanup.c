
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_tls {int dummy; } ;
struct mlx5e_priv {struct mlx5e_tls* tls; } ;


 int kfree (struct mlx5e_tls*) ;

void mlx5e_tls_cleanup(struct mlx5e_priv *priv)
{
 struct mlx5e_tls *tls = priv->tls;

 if (!tls)
  return;

 kfree(tls);
 priv->tls = ((void*)0);
}
