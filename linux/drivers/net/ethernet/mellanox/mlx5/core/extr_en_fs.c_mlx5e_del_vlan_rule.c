
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u16 ;
struct TYPE_3__ {int ** active_cvlans_rule; int ** active_svlans_rule; int * any_svlan_rule; int * any_cvlan_rule; int * untagged_rule; } ;
struct TYPE_4__ {TYPE_1__ vlan; } ;
struct mlx5e_priv {TYPE_2__ fs; } ;
typedef enum mlx5e_vlan_rule_type { ____Placeholder_mlx5e_vlan_rule_type } mlx5e_vlan_rule_type ;







 int mlx5_del_flow_rules (int *) ;
 int mlx5e_vport_context_update_vlans (struct mlx5e_priv*) ;

__attribute__((used)) static void mlx5e_del_vlan_rule(struct mlx5e_priv *priv,
    enum mlx5e_vlan_rule_type rule_type, u16 vid)
{
 switch (rule_type) {
 case 128:
  if (priv->fs.vlan.untagged_rule) {
   mlx5_del_flow_rules(priv->fs.vlan.untagged_rule);
   priv->fs.vlan.untagged_rule = ((void*)0);
  }
  break;
 case 132:
  if (priv->fs.vlan.any_cvlan_rule) {
   mlx5_del_flow_rules(priv->fs.vlan.any_cvlan_rule);
   priv->fs.vlan.any_cvlan_rule = ((void*)0);
  }
  break;
 case 131:
  if (priv->fs.vlan.any_svlan_rule) {
   mlx5_del_flow_rules(priv->fs.vlan.any_svlan_rule);
   priv->fs.vlan.any_svlan_rule = ((void*)0);
  }
  break;
 case 129:
  if (priv->fs.vlan.active_svlans_rule[vid]) {
   mlx5_del_flow_rules(priv->fs.vlan.active_svlans_rule[vid]);
   priv->fs.vlan.active_svlans_rule[vid] = ((void*)0);
  }
  break;
 case 130:
  if (priv->fs.vlan.active_cvlans_rule[vid]) {
   mlx5_del_flow_rules(priv->fs.vlan.active_cvlans_rule[vid]);
   priv->fs.vlan.active_cvlans_rule[vid] = ((void*)0);
  }
  mlx5e_vport_context_update_vlans(priv);
  break;
 }
}
