
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int tls; } ;


 int NUM_TLS_SW_COUNTERS ;

int mlx5e_tls_get_count(struct mlx5e_priv *priv)
{
 if (!priv->tls)
  return 0;

 return NUM_TLS_SW_COUNTERS;
}
