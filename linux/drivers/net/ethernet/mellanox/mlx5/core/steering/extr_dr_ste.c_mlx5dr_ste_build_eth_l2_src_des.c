
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_ste_build {int rx; int inner; int * ste_build_tag_func; int bit_mask; int byte_mask; int lu_type; } ;
struct mlx5dr_match_param {int dummy; } ;


 int DR_STE_CALC_LU_TYPE (int ,int,int) ;
 int ETHL2_SRC_DST ;
 int dr_ste_build_eth_l2_src_des_bit_mask (struct mlx5dr_match_param*,int,int ) ;
 int dr_ste_build_eth_l2_src_des_tag ;
 int dr_ste_conv_bit_to_byte_mask (int ) ;

int mlx5dr_ste_build_eth_l2_src_des(struct mlx5dr_ste_build *sb,
        struct mlx5dr_match_param *mask,
        bool inner, bool rx)
{
 int ret;

 ret = dr_ste_build_eth_l2_src_des_bit_mask(mask, inner, sb->bit_mask);
 if (ret)
  return ret;

 sb->rx = rx;
 sb->inner = inner;
 sb->lu_type = DR_STE_CALC_LU_TYPE(ETHL2_SRC_DST, rx, inner);
 sb->byte_mask = dr_ste_conv_bit_to_byte_mask(sb->bit_mask);
 sb->ste_build_tag_func = &dr_ste_build_eth_l2_src_des_tag;

 return 0;
}
