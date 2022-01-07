
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct mlx5e_dcbx {scalar_t__ mode; int cap; } ;
struct mlx5e_priv {int mdev; struct mlx5e_dcbx dcbx; } ;


 int DCB_CAP_DCBX_HOST ;
 int DCB_CAP_DCBX_LLD_MANAGED ;
 scalar_t__ MLX5E_DCBX_PARAM_VER_OPER_AUTO ;
 scalar_t__ MLX5_CAP_GEN (int ,struct mlx5e_dcbx*) ;
 int mlx5e_dcbnl_set_dcbx_mode (struct mlx5e_priv*,scalar_t__) ;
 scalar_t__ mlx5e_dcbnl_switch_to_host_mode (struct mlx5e_priv*) ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u8 mlx5e_dcbnl_setdcbx(struct net_device *dev, u8 mode)
{
 struct mlx5e_priv *priv = netdev_priv(dev);
 struct mlx5e_dcbx *dcbx = &priv->dcbx;

 if (mode & DCB_CAP_DCBX_LLD_MANAGED)
  return 1;

 if ((!mode) && MLX5_CAP_GEN(priv->mdev, dcbx)) {
  if (dcbx->mode == MLX5E_DCBX_PARAM_VER_OPER_AUTO)
   return 0;


  if (!mlx5e_dcbnl_set_dcbx_mode(priv, MLX5E_DCBX_PARAM_VER_OPER_AUTO)) {
   dcbx->mode = MLX5E_DCBX_PARAM_VER_OPER_AUTO;
   dcbx->cap &= ~DCB_CAP_DCBX_HOST;
   return 0;
  }

  return 1;
 }

 if (!(mode & DCB_CAP_DCBX_HOST))
  return 1;

 if (mlx5e_dcbnl_switch_to_host_mode(netdev_priv(dev)))
  return 1;

 dcbx->cap = mode;

 return 0;
}
