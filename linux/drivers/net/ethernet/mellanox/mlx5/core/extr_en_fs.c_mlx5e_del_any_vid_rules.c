
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_priv {int dummy; } ;


 int MLX5E_VLAN_RULE_TYPE_ANY_CTAG_VID ;
 int MLX5E_VLAN_RULE_TYPE_ANY_STAG_VID ;
 int mlx5e_del_vlan_rule (struct mlx5e_priv*,int ,int ) ;

__attribute__((used)) static void mlx5e_del_any_vid_rules(struct mlx5e_priv *priv)
{
 mlx5e_del_vlan_rule(priv, MLX5E_VLAN_RULE_TYPE_ANY_CTAG_VID, 0);
 mlx5e_del_vlan_rule(priv, MLX5E_VLAN_RULE_TYPE_ANY_STAG_VID, 0);
}
