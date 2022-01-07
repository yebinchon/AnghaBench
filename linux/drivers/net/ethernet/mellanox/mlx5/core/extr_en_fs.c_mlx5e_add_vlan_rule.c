
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5e_priv {int dummy; } ;
struct mlx5_flow_spec {int dummy; } ;
typedef enum mlx5e_vlan_rule_type { ____Placeholder_mlx5e_vlan_rule_type } mlx5e_vlan_rule_type ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLX5E_VLAN_RULE_TYPE_MATCH_CTAG_VID ;
 int __mlx5e_add_vlan_rule (struct mlx5e_priv*,int,int ,struct mlx5_flow_spec*) ;
 int kvfree (struct mlx5_flow_spec*) ;
 struct mlx5_flow_spec* kvzalloc (int,int ) ;
 int mlx5e_vport_context_update_vlans (struct mlx5e_priv*) ;

__attribute__((used)) static int mlx5e_add_vlan_rule(struct mlx5e_priv *priv,
          enum mlx5e_vlan_rule_type rule_type, u16 vid)
{
 struct mlx5_flow_spec *spec;
 int err = 0;

 spec = kvzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec)
  return -ENOMEM;

 if (rule_type == MLX5E_VLAN_RULE_TYPE_MATCH_CTAG_VID)
  mlx5e_vport_context_update_vlans(priv);

 err = __mlx5e_add_vlan_rule(priv, rule_type, vid, spec);

 kvfree(spec);

 return err;
}
