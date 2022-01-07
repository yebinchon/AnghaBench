
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlx5e_priv {int dummy; } ;
struct mlx5_esw_flow_attr {TYPE_2__* parse_attr; } ;
struct flow_action_entry {int id; } ;
struct TYPE_4__ {TYPE_1__* filter_dev; } ;
struct TYPE_3__ {int lower_level; } ;


 int FLOW_ACTION_VLAN_POP ;
 int parse_tc_vlan_action (struct mlx5e_priv*,struct flow_action_entry*,struct mlx5_esw_flow_attr*,int *) ;

__attribute__((used)) static int add_vlan_pop_action(struct mlx5e_priv *priv,
          struct mlx5_esw_flow_attr *attr,
          u32 *action)
{
 int nest_level = attr->parse_attr->filter_dev->lower_level;
 struct flow_action_entry vlan_act = {
  .id = FLOW_ACTION_VLAN_POP,
 };
 int err = 0;

 while (nest_level--) {
  err = parse_tc_vlan_action(priv, &vlan_act, attr, action);
  if (err)
   return err;
 }

 return err;
}
