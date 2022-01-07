
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pedit_headers_action {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct mlx5e_tc_flow_parse_attr {int spec; } ;
struct mlx5e_priv {int dummy; } ;
struct TYPE_2__ {int prio; int vid; } ;
struct flow_action_entry {TYPE_1__ vlan; } ;


 int MLX5_FLOW_NAMESPACE_FDB ;
 int MLX5_GET (int ,int ,int ) ;
 int add_vlan_rewrite_action (struct mlx5e_priv*,int ,struct flow_action_entry const*,struct mlx5e_tc_flow_parse_attr*,struct pedit_headers_action*,int *,struct netlink_ext_ack*) ;
 int first_prio ;
 int fte_match_set_lyr_2_4 ;
 int get_match_headers_criteria (int ,int *) ;
 int get_match_headers_value (int ,int *) ;

__attribute__((used)) static int
add_vlan_prio_tag_rewrite_action(struct mlx5e_priv *priv,
     struct mlx5e_tc_flow_parse_attr *parse_attr,
     struct pedit_headers_action *hdrs,
     u32 *action, struct netlink_ext_ack *extack)
{
 const struct flow_action_entry prio_tag_act = {
  .vlan.vid = 0,
  .vlan.prio =
   MLX5_GET(fte_match_set_lyr_2_4,
     get_match_headers_value(*action,
        &parse_attr->spec),
     first_prio) &
   MLX5_GET(fte_match_set_lyr_2_4,
     get_match_headers_criteria(*action,
           &parse_attr->spec),
     first_prio),
 };

 return add_vlan_rewrite_action(priv, MLX5_FLOW_NAMESPACE_FDB,
           &prio_tag_act, parse_attr, hdrs, action,
           extack);
}
