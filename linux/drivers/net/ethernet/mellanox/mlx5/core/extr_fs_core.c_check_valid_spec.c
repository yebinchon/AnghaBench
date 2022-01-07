
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_spec {int* match_value; int* match_criteria; } ;


 int MLX5_ST_SZ_DW_MATCH_PARAM ;
 int pr_warn (char*) ;

__attribute__((used)) static bool check_valid_spec(const struct mlx5_flow_spec *spec)
{
 int i;

 for (i = 0; i < MLX5_ST_SZ_DW_MATCH_PARAM; i++)
  if (spec->match_value[i] & ~spec->match_criteria[i]) {
   pr_warn("mlx5_core: match_value differs from match_criteria\n");
   return 0;
  }

 return 1;
}
