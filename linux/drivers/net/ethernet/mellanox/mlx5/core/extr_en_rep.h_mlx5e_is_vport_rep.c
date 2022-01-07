
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {scalar_t__ ppriv; int mdev; } ;


 scalar_t__ MLX5_ESWITCH_MANAGER (int ) ;

__attribute__((used)) static inline bool mlx5e_is_vport_rep(struct mlx5e_priv *priv)
{
 return (MLX5_ESWITCH_MANAGER(priv->mdev) && priv->ppriv);
}
