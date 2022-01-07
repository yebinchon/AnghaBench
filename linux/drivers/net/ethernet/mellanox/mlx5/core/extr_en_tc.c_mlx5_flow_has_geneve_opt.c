
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mlx5e_tc_flow {TYPE_2__* esw_attr; } ;
struct mlx5_flow_spec {int match_value; } ;
struct TYPE_4__ {TYPE_1__* parse_attr; } ;
struct TYPE_3__ {struct mlx5_flow_spec spec; } ;


 void* MLX5_ADDR_OF (int ,int ,int ) ;
 int MLX5_GET (int ,void*,int ) ;
 int fte_match_param ;
 int fte_match_set_misc3 ;
 int geneve_tlv_option_0_data ;
 int misc_parameters_3 ;

__attribute__((used)) static bool mlx5_flow_has_geneve_opt(struct mlx5e_tc_flow *flow)
{
 struct mlx5_flow_spec *spec = &flow->esw_attr->parse_attr->spec;
 void *headers_v = MLX5_ADDR_OF(fte_match_param,
           spec->match_value,
           misc_parameters_3);
 u32 geneve_tlv_opt_0_data = MLX5_GET(fte_match_set_misc3,
          headers_v,
          geneve_tlv_option_0_data);

 return !!geneve_tlv_opt_0_data;
}
