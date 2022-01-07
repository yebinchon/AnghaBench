
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_ste_build {int rx; int inner; int * ste_build_tag_func; int bit_mask; int byte_mask; int lu_type; } ;
struct mlx5dr_match_param {int dummy; } ;


 int MLX5DR_STE_LU_TYPE_GRE ;
 int dr_ste_build_gre_bit_mask (struct mlx5dr_match_param*,int,int ) ;
 int dr_ste_build_gre_tag ;
 int dr_ste_conv_bit_to_byte_mask (int ) ;

void mlx5dr_ste_build_gre(struct mlx5dr_ste_build *sb,
     struct mlx5dr_match_param *mask, bool inner, bool rx)
{
 dr_ste_build_gre_bit_mask(mask, inner, sb->bit_mask);

 sb->rx = rx;
 sb->inner = inner;
 sb->lu_type = MLX5DR_STE_LU_TYPE_GRE;
 sb->byte_mask = dr_ste_conv_bit_to_byte_mask(sb->bit_mask);
 sb->ste_build_tag_func = &dr_ste_build_gre_tag;
}
