
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_rep_priv {struct mlx5_eswitch_rep* rep; } ;
struct mlx5e_priv {int mdev; struct mlx5e_rep_priv* ppriv; } ;
struct mlx5_eswitch_rep {scalar_t__ vport; } ;


 int MLX5_ESWITCH_MANAGER (int ) ;
 scalar_t__ MLX5_VPORT_UPLINK ;

bool mlx5e_is_uplink_rep(struct mlx5e_priv *priv)
{
 struct mlx5e_rep_priv *rpriv = priv->ppriv;
 struct mlx5_eswitch_rep *rep;

 if (!MLX5_ESWITCH_MANAGER(priv->mdev))
  return 0;

 if (!rpriv)
  return 0;

 rep = rpriv->rep;
 return (rep->vport == MLX5_VPORT_UPLINK);
}
