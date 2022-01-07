
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_match_spec {int dummy; } ;
struct mlx5dr_match_param {struct mlx5dr_match_spec outer; struct mlx5dr_match_spec inner; } ;


 int DR_STE_SET_MASK_V (int ,int *,int ,struct mlx5dr_match_spec*,int ) ;
 int dr_ste_build_eth_l2_src_or_dst_bit_mask (struct mlx5dr_match_param*,int,int *) ;
 int eth_l2_src ;
 int smac_15_0 ;
 int smac_47_16 ;

__attribute__((used)) static void dr_ste_build_eth_l2_src_bit_mask(struct mlx5dr_match_param *value,
          bool inner, u8 *bit_mask)
{
 struct mlx5dr_match_spec *mask = inner ? &value->inner : &value->outer;

 DR_STE_SET_MASK_V(eth_l2_src, bit_mask, smac_47_16, mask, smac_47_16);
 DR_STE_SET_MASK_V(eth_l2_src, bit_mask, smac_15_0, mask, smac_15_0);

 dr_ste_build_eth_l2_src_or_dst_bit_mask(value, inner, bit_mask);
}
