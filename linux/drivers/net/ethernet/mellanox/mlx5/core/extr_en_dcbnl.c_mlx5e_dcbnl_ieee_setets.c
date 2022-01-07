
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlx5e_priv {int mdev; } ;
struct ieee_ets {int dummy; } ;


 int EOPNOTSUPP ;
 int MLX5_CAP_GEN (int ,struct ieee_ets*) ;
 int mlx5e_dbcnl_validate_ets (struct net_device*,struct ieee_ets*,int) ;
 int mlx5e_dcbnl_ieee_setets_core (struct mlx5e_priv*,struct ieee_ets*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mlx5e_dcbnl_ieee_setets(struct net_device *netdev,
       struct ieee_ets *ets)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 int err;

 if (!MLX5_CAP_GEN(priv->mdev, ets))
  return -EOPNOTSUPP;

 err = mlx5e_dbcnl_validate_ets(netdev, ets, 0);
 if (err)
  return err;

 err = mlx5e_dcbnl_ieee_setets_core(priv, ets);
 if (err)
  return err;

 return 0;
}
