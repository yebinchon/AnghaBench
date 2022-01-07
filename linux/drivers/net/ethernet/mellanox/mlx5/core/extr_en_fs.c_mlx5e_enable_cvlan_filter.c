
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cvlan_filter_disabled; } ;
struct TYPE_5__ {TYPE_1__ vlan; } ;
struct mlx5e_priv {TYPE_3__* netdev; TYPE_2__ fs; } ;
struct TYPE_6__ {int flags; } ;


 int IFF_PROMISC ;
 int MLX5E_VLAN_RULE_TYPE_ANY_CTAG_VID ;
 int mlx5e_del_vlan_rule (struct mlx5e_priv*,int ,int ) ;

void mlx5e_enable_cvlan_filter(struct mlx5e_priv *priv)
{
 if (!priv->fs.vlan.cvlan_filter_disabled)
  return;

 priv->fs.vlan.cvlan_filter_disabled = 0;
 if (priv->netdev->flags & IFF_PROMISC)
  return;
 mlx5e_del_vlan_rule(priv, MLX5E_VLAN_RULE_TYPE_ANY_CTAG_VID, 0);
}
