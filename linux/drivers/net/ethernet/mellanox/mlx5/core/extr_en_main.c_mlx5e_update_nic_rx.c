
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;


 int mlx5e_refresh_tirs (struct mlx5e_priv*,int) ;

int mlx5e_update_nic_rx(struct mlx5e_priv *priv)
{
 return mlx5e_refresh_tirs(priv, 0);
}
