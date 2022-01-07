
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_tls {int dummy; } ;
struct mlx5e_priv {struct mlx5e_tls* tls; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mlx5e_tls* kzalloc (int,int ) ;

int mlx5e_tls_init(struct mlx5e_priv *priv)
{
 struct mlx5e_tls *tls = kzalloc(sizeof(*tls), GFP_KERNEL);

 if (!tls)
  return -ENOMEM;

 priv->tls = tls;
 return 0;
}
