
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;


 int mlx5e_reporter_rx_create (struct mlx5e_priv*) ;
 int mlx5e_reporter_tx_create (struct mlx5e_priv*) ;

int mlx5e_health_create_reporters(struct mlx5e_priv *priv)
{
 int err;

 err = mlx5e_reporter_tx_create(priv);
 if (err)
  return err;

 err = mlx5e_reporter_rx_create(priv);
 if (err)
  return err;

 return 0;
}
