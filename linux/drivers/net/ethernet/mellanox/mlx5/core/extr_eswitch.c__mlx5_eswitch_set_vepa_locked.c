
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int num; } ;
struct mlx5_flow_spec {TYPE_1__ vport; int type; int ft; int match_criteria_enable; int match_criteria; int match_value; } ;
struct mlx5_flow_handle {int dummy; } ;
struct mlx5_flow_destination {TYPE_1__ vport; int type; int ft; int match_criteria_enable; int match_criteria; int match_value; } ;
struct mlx5_flow_act {void* action; } ;
struct TYPE_5__ {struct mlx5_flow_handle* vepa_star_rule; int vepa_fdb; struct mlx5_flow_handle* vepa_uplink_rule; int fdb; } ;
struct TYPE_6__ {TYPE_2__ legacy; } ;
struct mlx5_eswitch {TYPE_3__ fdb_table; } ;
typedef int dest ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mlx5_flow_handle*) ;
 void* MLX5_ADDR_OF (int ,int ,int ) ;
 void* MLX5_FLOW_CONTEXT_ACTION_FWD_DEST ;
 int MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE ;
 int MLX5_FLOW_DESTINATION_TYPE_VPORT ;
 int MLX5_MATCH_MISC_PARAMETERS ;
 int MLX5_SET (int ,void*,int ,int ) ;
 int MLX5_SET_TO_ONES (int ,void*,int ) ;
 int MLX5_VPORT_UPLINK ;
 int PTR_ERR (struct mlx5_flow_handle*) ;
 int esw_cleanup_vepa_rules (struct mlx5_eswitch*) ;
 int fte_match_param ;
 int fte_match_set_misc ;
 int kvfree (struct mlx5_flow_spec*) ;
 struct mlx5_flow_spec* kvzalloc (int,int ) ;
 int memset (struct mlx5_flow_spec*,int ,int) ;
 int misc_parameters ;
 struct mlx5_flow_handle* mlx5_add_flow_rules (int ,struct mlx5_flow_spec*,struct mlx5_flow_act*,struct mlx5_flow_spec*,int) ;
 int source_port ;

__attribute__((used)) static int _mlx5_eswitch_set_vepa_locked(struct mlx5_eswitch *esw,
      u8 setting)
{
 struct mlx5_flow_destination dest = {};
 struct mlx5_flow_act flow_act = {};
 struct mlx5_flow_handle *flow_rule;
 struct mlx5_flow_spec *spec;
 int err = 0;
 void *misc;

 if (!setting) {
  esw_cleanup_vepa_rules(esw);
  return 0;
 }

 if (esw->fdb_table.legacy.vepa_uplink_rule)
  return 0;

 spec = kvzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec)
  return -ENOMEM;


 misc = MLX5_ADDR_OF(fte_match_param, spec->match_value, misc_parameters);
 MLX5_SET(fte_match_set_misc, misc, source_port, MLX5_VPORT_UPLINK);

 misc = MLX5_ADDR_OF(fte_match_param, spec->match_criteria, misc_parameters);
 MLX5_SET_TO_ONES(fte_match_set_misc, misc, source_port);

 spec->match_criteria_enable = MLX5_MATCH_MISC_PARAMETERS;
 dest.type = MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE;
 dest.ft = esw->fdb_table.legacy.fdb;
 flow_act.action = MLX5_FLOW_CONTEXT_ACTION_FWD_DEST;
 flow_rule = mlx5_add_flow_rules(esw->fdb_table.legacy.vepa_fdb, spec,
     &flow_act, &dest, 1);
 if (IS_ERR(flow_rule)) {
  err = PTR_ERR(flow_rule);
  goto out;
 } else {
  esw->fdb_table.legacy.vepa_uplink_rule = flow_rule;
 }


 memset(spec, 0, sizeof(*spec));
 memset(&dest, 0, sizeof(dest));
 dest.type = MLX5_FLOW_DESTINATION_TYPE_VPORT;
 dest.vport.num = MLX5_VPORT_UPLINK;
 flow_act.action = MLX5_FLOW_CONTEXT_ACTION_FWD_DEST;
 flow_rule = mlx5_add_flow_rules(esw->fdb_table.legacy.vepa_fdb, spec,
     &flow_act, &dest, 1);
 if (IS_ERR(flow_rule)) {
  err = PTR_ERR(flow_rule);
  goto out;
 } else {
  esw->fdb_table.legacy.vepa_star_rule = flow_rule;
 }

out:
 kvfree(spec);
 if (err)
  esw_cleanup_vepa_rules(esw);
 return err;
}
