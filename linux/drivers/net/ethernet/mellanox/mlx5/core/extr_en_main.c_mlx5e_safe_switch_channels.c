
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;
struct mlx5e_channels {int dummy; } ;
typedef int mlx5e_fp_hw_modify ;


 int mlx5e_open_channels (struct mlx5e_priv*,struct mlx5e_channels*) ;
 int mlx5e_switch_priv_channels (struct mlx5e_priv*,struct mlx5e_channels*,int ) ;

int mlx5e_safe_switch_channels(struct mlx5e_priv *priv,
          struct mlx5e_channels *new_chs,
          mlx5e_fp_hw_modify hw_modify)
{
 int err;

 err = mlx5e_open_channels(priv, new_chs);
 if (err)
  return err;

 mlx5e_switch_priv_channels(priv, new_chs, hw_modify);
 return 0;
}
