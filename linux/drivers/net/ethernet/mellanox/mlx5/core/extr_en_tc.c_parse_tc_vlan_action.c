
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct mlx5e_priv {int mdev; } ;
struct mlx5_esw_flow_attr {scalar_t__ total_vlan; int * vlan_proto; int * vlan_prio; int * vlan_vid; } ;
struct TYPE_2__ {int prio; int proto; int vid; } ;
struct flow_action_entry {int id; TYPE_1__ vlan; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int ETH_P_8021Q ;


 int MLX5_FLOW_CONTEXT_ACTION_VLAN_POP ;
 int MLX5_FLOW_CONTEXT_ACTION_VLAN_POP_2 ;
 int MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH ;
 int MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH_2 ;
 scalar_t__ MLX5_FS_VLAN_DEPTH ;
 int htons (int ) ;
 int mlx5_eswitch_vlan_actions_supported (int ,int) ;

__attribute__((used)) static int parse_tc_vlan_action(struct mlx5e_priv *priv,
    const struct flow_action_entry *act,
    struct mlx5_esw_flow_attr *attr,
    u32 *action)
{
 u8 vlan_idx = attr->total_vlan;

 if (vlan_idx >= MLX5_FS_VLAN_DEPTH)
  return -EOPNOTSUPP;

 switch (act->id) {
 case 129:
  if (vlan_idx) {
   if (!mlx5_eswitch_vlan_actions_supported(priv->mdev,
         MLX5_FS_VLAN_DEPTH))
    return -EOPNOTSUPP;

   *action |= MLX5_FLOW_CONTEXT_ACTION_VLAN_POP_2;
  } else {
   *action |= MLX5_FLOW_CONTEXT_ACTION_VLAN_POP;
  }
  break;
 case 128:
  attr->vlan_vid[vlan_idx] = act->vlan.vid;
  attr->vlan_prio[vlan_idx] = act->vlan.prio;
  attr->vlan_proto[vlan_idx] = act->vlan.proto;
  if (!attr->vlan_proto[vlan_idx])
   attr->vlan_proto[vlan_idx] = htons(ETH_P_8021Q);

  if (vlan_idx) {
   if (!mlx5_eswitch_vlan_actions_supported(priv->mdev,
         MLX5_FS_VLAN_DEPTH))
    return -EOPNOTSUPP;

   *action |= MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH_2;
  } else {
   if (!mlx5_eswitch_vlan_actions_supported(priv->mdev, 1) &&
       (act->vlan.proto != htons(ETH_P_8021Q) ||
        act->vlan.prio))
    return -EOPNOTSUPP;

   *action |= MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH;
  }
  break;
 default:
  return -EINVAL;
 }

 attr->total_vlan = vlan_idx + 1;

 return 0;
}
