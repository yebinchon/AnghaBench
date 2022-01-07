
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_ste_build {int rx; int inner; int * ste_build_tag_func; int bit_mask; int byte_mask; int lu_type; struct mlx5dr_cmd_caps* caps; } ;
struct mlx5dr_match_param {int dummy; } ;
struct mlx5dr_cmd_caps {int dummy; } ;


 int MLX5DR_STE_LU_TYPE_FLEX_PARSER_1 ;
 int dr_ste_build_flex_parser_1_bit_mask (struct mlx5dr_match_param*,struct mlx5dr_cmd_caps*,int ) ;
 int dr_ste_build_flex_parser_1_tag ;
 int dr_ste_conv_bit_to_byte_mask (int ) ;

int mlx5dr_ste_build_flex_parser_1(struct mlx5dr_ste_build *sb,
       struct mlx5dr_match_param *mask,
       struct mlx5dr_cmd_caps *caps,
       bool inner, bool rx)
{
 int ret;

 ret = dr_ste_build_flex_parser_1_bit_mask(mask, caps, sb->bit_mask);
 if (ret)
  return ret;

 sb->rx = rx;
 sb->inner = inner;
 sb->caps = caps;
 sb->lu_type = MLX5DR_STE_LU_TYPE_FLEX_PARSER_1;
 sb->byte_mask = dr_ste_conv_bit_to_byte_mask(sb->bit_mask);
 sb->ste_build_tag_func = &dr_ste_build_flex_parser_1_tag;

 return 0;
}
