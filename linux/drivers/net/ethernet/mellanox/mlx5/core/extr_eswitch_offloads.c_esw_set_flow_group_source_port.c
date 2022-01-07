
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_eswitch {int dummy; } ;
struct TYPE_4__ {int source_port; } ;
struct TYPE_3__ {int metadata_reg_c_0; } ;


 void* MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_MATCH_MISC_PARAMETERS ;
 int MLX5_MATCH_MISC_PARAMETERS_2 ;
 int MLX5_SET (int ,int *,int ,int ) ;
 int MLX5_SET_TO_ONES (int ,void*,int ) ;
 int create_flow_group_in ;
 int fte_match_param ;
 void* match_criteria ;
 int match_criteria_enable ;
 TYPE_2__ misc_parameters ;
 TYPE_1__ misc_parameters_2 ;
 scalar_t__ mlx5_eswitch_vport_match_metadata_enabled (struct mlx5_eswitch*) ;

__attribute__((used)) static void esw_set_flow_group_source_port(struct mlx5_eswitch *esw,
        u32 *flow_group_in)
{
 void *match_criteria = MLX5_ADDR_OF(create_flow_group_in,
         flow_group_in,
         match_criteria);

 if (mlx5_eswitch_vport_match_metadata_enabled(esw)) {
  MLX5_SET(create_flow_group_in, flow_group_in,
    match_criteria_enable,
    MLX5_MATCH_MISC_PARAMETERS_2);

  MLX5_SET_TO_ONES(fte_match_param, match_criteria,
     misc_parameters_2.metadata_reg_c_0);
 } else {
  MLX5_SET(create_flow_group_in, flow_group_in,
    match_criteria_enable,
    MLX5_MATCH_MISC_PARAMETERS);

  MLX5_SET_TO_ONES(fte_match_param, match_criteria,
     misc_parameters.source_port);
 }
}
