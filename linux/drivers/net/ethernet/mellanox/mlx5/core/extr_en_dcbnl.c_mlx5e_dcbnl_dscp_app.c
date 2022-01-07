
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dscp_app_cnt; } ;
struct TYPE_3__ {scalar_t__ trust_state; int * dscp2prio; } ;
struct mlx5e_priv {TYPE_2__ dcbx; int netdev; TYPE_1__ dcbx_dp; int mdev; } ;
struct dcb_app {int protocol; int priority; int selector; } ;


 int IEEE_8021QAZ_APP_SEL_DSCP ;
 int INIT ;
 int MLX5E_MAX_DSCP ;
 int MLX5_CAP_GEN (int ,int ) ;
 int MLX5_DSCP_SUPPORTED (int ) ;
 scalar_t__ MLX5_QPTS_TRUST_DSCP ;
 int dcb_ieee_delapp (int ,struct dcb_app*) ;
 int dcb_ieee_setapp (int ,struct dcb_app*) ;
 int vport_group_manager ;

__attribute__((used)) static void mlx5e_dcbnl_dscp_app(struct mlx5e_priv *priv, int action)
{
 struct dcb_app temp;
 int i;

 if (!MLX5_CAP_GEN(priv->mdev, vport_group_manager))
  return;

 if (!MLX5_DSCP_SUPPORTED(priv->mdev))
  return;


 if (priv->dcbx_dp.trust_state != MLX5_QPTS_TRUST_DSCP)
  return;

 temp.selector = IEEE_8021QAZ_APP_SEL_DSCP;
 for (i = 0; i < MLX5E_MAX_DSCP; i++) {
  temp.protocol = i;
  temp.priority = priv->dcbx_dp.dscp2prio[i];
  if (action == INIT)
   dcb_ieee_setapp(priv->netdev, &temp);
  else
   dcb_ieee_delapp(priv->netdev, &temp);
 }

 priv->dcbx.dscp_app_cnt = (action == INIT) ? MLX5E_MAX_DSCP : 0;
}
