
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int ipsec; } ;


 int NUM_IPSEC_COUNTERS ;

int mlx5e_ipsec_get_count(struct mlx5e_priv *priv)
{
 if (!priv->ipsec)
  return 0;

 return NUM_IPSEC_COUNTERS;
}
