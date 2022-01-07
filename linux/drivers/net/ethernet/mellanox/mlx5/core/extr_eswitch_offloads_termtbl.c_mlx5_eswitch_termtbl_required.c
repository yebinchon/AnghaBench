
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_spec {int dummy; } ;
struct mlx5_flow_act {int action; } ;
struct mlx5_eswitch {int dev; } ;


 int MLX5_CAP_ESW_FLOWTABLE_FDB (int ,int ) ;
 int MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH ;
 scalar_t__ mlx5_eswitch_offload_is_uplink_port (struct mlx5_eswitch*,struct mlx5_flow_spec*) ;
 int termination_table ;

bool
mlx5_eswitch_termtbl_required(struct mlx5_eswitch *esw,
         struct mlx5_flow_act *flow_act,
         struct mlx5_flow_spec *spec)
{
 if (!MLX5_CAP_ESW_FLOWTABLE_FDB(esw->dev, termination_table))
  return 0;


 return (flow_act->action & MLX5_FLOW_CONTEXT_ACTION_VLAN_PUSH) &&
  mlx5_eswitch_offload_is_uplink_port(esw, spec);
}
