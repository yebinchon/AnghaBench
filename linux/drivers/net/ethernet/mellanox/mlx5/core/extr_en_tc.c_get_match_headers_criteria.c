
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_flow_spec {int match_criteria; } ;


 void* MLX5_ADDR_OF (int ,int ,int ) ;
 int MLX5_FLOW_CONTEXT_ACTION_DECAP ;
 int fte_match_param ;
 int inner_headers ;
 int outer_headers ;

__attribute__((used)) static void *get_match_headers_criteria(u32 flags,
     struct mlx5_flow_spec *spec)
{
 return (flags & MLX5_FLOW_CONTEXT_ACTION_DECAP) ?
  MLX5_ADDR_OF(fte_match_param, spec->match_criteria,
        inner_headers) :
  MLX5_ADDR_OF(fte_match_param, spec->match_criteria,
        outer_headers);
}
