
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx5_flow_spec {int match_criteria; int match_criteria_enable; int match_value; } ;
struct TYPE_6__ {int flags; int vhca_id; int num; } ;
struct mlx5_flow_destination {TYPE_3__ vport; int type; } ;
struct mlx5_eswitch {int dummy; } ;
struct TYPE_5__ {TYPE_1__* eswitch; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
struct TYPE_4__ {int manager_vport; } ;


 void* MLX5_ADDR_OF (int ,int ,int ) ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_FLOW_DESTINATION_TYPE_VPORT ;
 int MLX5_FLOW_DEST_VPORT_VHCA_ID ;
 int MLX5_MATCH_MISC_PARAMETERS ;
 int MLX5_MATCH_MISC_PARAMETERS_2 ;
 int MLX5_SET (int ,void*,int ,int ) ;
 int MLX5_SET_TO_ONES (int ,void*,int ) ;
 int fte_match_param ;
 int fte_match_set_misc ;
 int fte_match_set_misc2 ;
 int metadata_reg_c_0 ;
 int misc_parameters ;
 int misc_parameters_2 ;
 scalar_t__ mlx5_eswitch_vport_match_metadata_enabled (struct mlx5_eswitch*) ;
 int source_eswitch_owner_vhca_id ;
 int source_port ;
 int vhca_id ;

__attribute__((used)) static void peer_miss_rules_setup(struct mlx5_eswitch *esw,
      struct mlx5_core_dev *peer_dev,
      struct mlx5_flow_spec *spec,
      struct mlx5_flow_destination *dest)
{
 void *misc;

 if (mlx5_eswitch_vport_match_metadata_enabled(esw)) {
  misc = MLX5_ADDR_OF(fte_match_param, spec->match_criteria,
        misc_parameters_2);
  MLX5_SET_TO_ONES(fte_match_set_misc2, misc, metadata_reg_c_0);

  spec->match_criteria_enable = MLX5_MATCH_MISC_PARAMETERS_2;
 } else {
  misc = MLX5_ADDR_OF(fte_match_param, spec->match_value,
        misc_parameters);

  MLX5_SET(fte_match_set_misc, misc, source_eswitch_owner_vhca_id,
    MLX5_CAP_GEN(peer_dev, vhca_id));

  spec->match_criteria_enable = MLX5_MATCH_MISC_PARAMETERS;

  misc = MLX5_ADDR_OF(fte_match_param, spec->match_criteria,
        misc_parameters);
  MLX5_SET_TO_ONES(fte_match_set_misc, misc, source_port);
  MLX5_SET_TO_ONES(fte_match_set_misc, misc,
     source_eswitch_owner_vhca_id);
 }

 dest->type = MLX5_FLOW_DESTINATION_TYPE_VPORT;
 dest->vport.num = peer_dev->priv.eswitch->manager_vport;
 dest->vport.vhca_id = MLX5_CAP_GEN(peer_dev, vhca_id);
 dest->vport.flags |= MLX5_FLOW_DEST_VPORT_VHCA_ID;
}
