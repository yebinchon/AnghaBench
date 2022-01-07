
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct net_device {int dummy; } ;
struct mlx5e_cee_config {scalar_t__ pfc_enable; } ;
struct TYPE_2__ {struct mlx5e_cee_config cee_cfg; } ;
struct mlx5e_priv {TYPE_1__ dcbx; } ;


 scalar_t__ MLX5E_CEE_STATE_DOWN ;
 scalar_t__ MLX5E_CEE_STATE_UP ;
 struct mlx5e_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mlx5e_dcbnl_setpfcstate(struct net_device *netdev, u8 state)
{
 struct mlx5e_priv *priv = netdev_priv(netdev);
 struct mlx5e_cee_config *cee_cfg = &priv->dcbx.cee_cfg;

 if ((state != MLX5E_CEE_STATE_UP) && (state != MLX5E_CEE_STATE_DOWN))
  return;

 cee_cfg->pfc_enable = state;
}
