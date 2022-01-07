
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_cmd_caps {int flex_protocols; } ;


 int MLX5_FLEX_PARSER_ICMP_V6_ENABLED ;

__attribute__((used)) static inline int
mlx5dr_matcher_supp_flex_parser_icmp_v6(struct mlx5dr_cmd_caps *caps)
{
 return caps->flex_protocols & MLX5_FLEX_PARSER_ICMP_V6_ENABLED;
}
