
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_tc_flow {int esw_attr; } ;
struct mlx5_flow_spec {int dummy; } ;
struct mlx5_flow_handle {int dummy; } ;
struct mlx5_eswitch {int dummy; } ;
struct mlx5_esw_flow_attr {int dest_chain; scalar_t__ split_count; int action; } ;


 int FDB_SLOW_PATH_CHAIN ;
 int IS_ERR (struct mlx5_flow_handle*) ;
 int MLX5_FLOW_CONTEXT_ACTION_FWD_DEST ;
 int SLOW ;
 int flow_flag_set (struct mlx5e_tc_flow*,int ) ;
 int memcpy (struct mlx5_esw_flow_attr*,int ,int) ;
 struct mlx5_flow_handle* mlx5e_tc_offload_fdb_rules (struct mlx5_eswitch*,struct mlx5e_tc_flow*,struct mlx5_flow_spec*,struct mlx5_esw_flow_attr*) ;

__attribute__((used)) static struct mlx5_flow_handle *
mlx5e_tc_offload_to_slow_path(struct mlx5_eswitch *esw,
         struct mlx5e_tc_flow *flow,
         struct mlx5_flow_spec *spec,
         struct mlx5_esw_flow_attr *slow_attr)
{
 struct mlx5_flow_handle *rule;

 memcpy(slow_attr, flow->esw_attr, sizeof(*slow_attr));
 slow_attr->action = MLX5_FLOW_CONTEXT_ACTION_FWD_DEST;
 slow_attr->split_count = 0;
 slow_attr->dest_chain = FDB_SLOW_PATH_CHAIN;

 rule = mlx5e_tc_offload_fdb_rules(esw, flow, spec, slow_attr);
 if (!IS_ERR(rule))
  flow_flag_set(flow, SLOW);

 return rule;
}
