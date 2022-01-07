
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct mlx5_flow_spec {int match_criteria_enable; int match_criteria; int match_value; } ;
struct mlx5_flow_handle {int dummy; } ;
struct TYPE_4__ {int num; } ;
struct mlx5_flow_destination {TYPE_1__ vport; int type; } ;
struct mlx5_flow_act {int action; int member_0; } ;
struct TYPE_5__ {int slow_fdb; } ;
struct TYPE_6__ {TYPE_2__ offloads; } ;
struct mlx5_eswitch {int dev; TYPE_3__ fdb_table; int manager_vport; } ;


 int ENOMEM ;
 struct mlx5_flow_handle* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mlx5_flow_handle*) ;
 void* MLX5_ADDR_OF (int ,int ,int ) ;
 int MLX5_FLOW_CONTEXT_ACTION_FWD_DEST ;
 int MLX5_FLOW_DESTINATION_TYPE_VPORT ;
 int MLX5_MATCH_MISC_PARAMETERS ;
 int MLX5_SET (int ,void*,int ,int ) ;
 int MLX5_SET_TO_ONES (int ,void*,int ) ;
 int PTR_ERR (struct mlx5_flow_handle*) ;
 int esw_warn (int ,char*,int ) ;
 int fte_match_param ;
 int fte_match_set_misc ;
 int kvfree (struct mlx5_flow_spec*) ;
 struct mlx5_flow_spec* kvzalloc (int,int ) ;
 int misc_parameters ;
 struct mlx5_flow_handle* mlx5_add_flow_rules (int ,struct mlx5_flow_spec*,struct mlx5_flow_act*,struct mlx5_flow_destination*,int) ;
 int source_port ;
 int source_sqn ;

struct mlx5_flow_handle *
mlx5_eswitch_add_send_to_vport_rule(struct mlx5_eswitch *esw, u16 vport,
        u32 sqn)
{
 struct mlx5_flow_act flow_act = {0};
 struct mlx5_flow_destination dest = {};
 struct mlx5_flow_handle *flow_rule;
 struct mlx5_flow_spec *spec;
 void *misc;

 spec = kvzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec) {
  flow_rule = ERR_PTR(-ENOMEM);
  goto out;
 }

 misc = MLX5_ADDR_OF(fte_match_param, spec->match_value, misc_parameters);
 MLX5_SET(fte_match_set_misc, misc, source_sqn, sqn);

 MLX5_SET(fte_match_set_misc, misc, source_port, esw->manager_vport);

 misc = MLX5_ADDR_OF(fte_match_param, spec->match_criteria, misc_parameters);
 MLX5_SET_TO_ONES(fte_match_set_misc, misc, source_sqn);
 MLX5_SET_TO_ONES(fte_match_set_misc, misc, source_port);

 spec->match_criteria_enable = MLX5_MATCH_MISC_PARAMETERS;
 dest.type = MLX5_FLOW_DESTINATION_TYPE_VPORT;
 dest.vport.num = vport;
 flow_act.action = MLX5_FLOW_CONTEXT_ACTION_FWD_DEST;

 flow_rule = mlx5_add_flow_rules(esw->fdb_table.offloads.slow_fdb, spec,
     &flow_act, &dest, 1);
 if (IS_ERR(flow_rule))
  esw_warn(esw->dev, "FDB: Failed to add send to vport rule err %ld\n", PTR_ERR(flow_rule));
out:
 kvfree(spec);
 return flow_rule;
}
