
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MLX5_FLOW_CONTEXT_ACTION_COUNT ;
 int MLX5_FLOW_CONTEXT_ACTION_DECAP ;
 int MLX5_FLOW_CONTEXT_ACTION_DROP ;
 int MLX5_FLOW_CONTEXT_ACTION_MOD_HDR ;
 int MLX5_FLOW_CONTEXT_ACTION_PACKET_REFORMAT ;
 int MLX5_FLOW_CONTEXT_ACTION_VLAN_POP ;
 int MLX5_FLOW_CONTEXT_ACTION_VLAN_POP_2 ;
 int MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH ;
 int MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH_2 ;

__attribute__((used)) static bool check_conflicting_actions(u32 action1, u32 action2)
{
 u32 xored_actions = action1 ^ action2;


 if (action1 == MLX5_FLOW_CONTEXT_ACTION_COUNT ||
     action2 == MLX5_FLOW_CONTEXT_ACTION_COUNT)
  return 0;

 if (xored_actions & (MLX5_FLOW_CONTEXT_ACTION_DROP |
        MLX5_FLOW_CONTEXT_ACTION_PACKET_REFORMAT |
        MLX5_FLOW_CONTEXT_ACTION_DECAP |
        MLX5_FLOW_CONTEXT_ACTION_MOD_HDR |
        MLX5_FLOW_CONTEXT_ACTION_VLAN_POP |
        MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH |
        MLX5_FLOW_CONTEXT_ACTION_VLAN_POP_2 |
        MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH_2))
  return 1;

 return 0;
}
