
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mlx5_flow_spec {int match_criteria_enable; int match_criteria; int match_value; } ;
struct mlx5_flow_handle {int dummy; } ;
struct mlx5_flow_destination {int dummy; } ;
struct mlx5_flow_act {int action; int member_0; } ;
struct TYPE_2__ {int ft_offloads; } ;
struct mlx5_eswitch {int dev; TYPE_1__ offloads; } ;


 int ENOMEM ;
 struct mlx5_flow_handle* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mlx5_flow_handle*) ;
 void* MLX5_ADDR_OF (int ,int ,int ) ;
 int MLX5_FLOW_CONTEXT_ACTION_FWD_DEST ;
 int MLX5_MATCH_MISC_PARAMETERS ;
 int MLX5_MATCH_MISC_PARAMETERS_2 ;
 int MLX5_SET (int ,void*,int ,int ) ;
 int MLX5_SET_TO_ONES (int ,void*,int ) ;
 int PTR_ERR (struct mlx5_flow_handle*) ;
 int esw_warn (int ,char*,int ) ;
 int fte_match_param ;
 int fte_match_set_misc ;
 int fte_match_set_misc2 ;
 int kvfree (struct mlx5_flow_spec*) ;
 struct mlx5_flow_spec* kvzalloc (int,int ) ;
 int metadata_reg_c_0 ;
 int misc_parameters ;
 int misc_parameters_2 ;
 struct mlx5_flow_handle* mlx5_add_flow_rules (int ,struct mlx5_flow_spec*,struct mlx5_flow_act*,struct mlx5_flow_destination*,int) ;
 int mlx5_eswitch_get_vport_metadata_for_match (struct mlx5_eswitch*,int ) ;
 scalar_t__ mlx5_eswitch_vport_match_metadata_enabled (struct mlx5_eswitch*) ;
 int source_port ;

struct mlx5_flow_handle *
mlx5_eswitch_create_vport_rx_rule(struct mlx5_eswitch *esw, u16 vport,
      struct mlx5_flow_destination *dest)
{
 struct mlx5_flow_act flow_act = {0};
 struct mlx5_flow_handle *flow_rule;
 struct mlx5_flow_spec *spec;
 void *misc;

 spec = kvzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec) {
  flow_rule = ERR_PTR(-ENOMEM);
  goto out;
 }

 if (mlx5_eswitch_vport_match_metadata_enabled(esw)) {
  misc = MLX5_ADDR_OF(fte_match_param, spec->match_value, misc_parameters_2);
  MLX5_SET(fte_match_set_misc2, misc, metadata_reg_c_0,
    mlx5_eswitch_get_vport_metadata_for_match(esw, vport));

  misc = MLX5_ADDR_OF(fte_match_param, spec->match_criteria, misc_parameters_2);
  MLX5_SET_TO_ONES(fte_match_set_misc2, misc, metadata_reg_c_0);

  spec->match_criteria_enable = MLX5_MATCH_MISC_PARAMETERS_2;
 } else {
  misc = MLX5_ADDR_OF(fte_match_param, spec->match_value, misc_parameters);
  MLX5_SET(fte_match_set_misc, misc, source_port, vport);

  misc = MLX5_ADDR_OF(fte_match_param, spec->match_criteria, misc_parameters);
  MLX5_SET_TO_ONES(fte_match_set_misc, misc, source_port);

  spec->match_criteria_enable = MLX5_MATCH_MISC_PARAMETERS;
 }

 flow_act.action = MLX5_FLOW_CONTEXT_ACTION_FWD_DEST;
 flow_rule = mlx5_add_flow_rules(esw->offloads.ft_offloads, spec,
     &flow_act, dest, 1);
 if (IS_ERR(flow_rule)) {
  esw_warn(esw->dev, "fs offloads: Failed to add vport rx rule err %ld\n", PTR_ERR(flow_rule));
  goto out;
 }

out:
 kvfree(spec);
 return flow_rule;
}
