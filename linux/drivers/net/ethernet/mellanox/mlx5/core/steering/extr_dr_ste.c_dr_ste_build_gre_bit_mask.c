
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_match_misc {int dummy; } ;
struct mlx5dr_match_param {struct mlx5dr_match_misc misc; } ;


 int DR_STE_SET_MASK_V (int ,int *,int ,struct mlx5dr_match_misc*,int ) ;
 int gre ;
 int gre_c_present ;
 int gre_k_present ;
 int gre_key_h ;
 int gre_key_l ;
 int gre_protocol ;
 int gre_s_present ;

__attribute__((used)) static void dr_ste_build_gre_bit_mask(struct mlx5dr_match_param *value,
          bool inner, u8 *bit_mask)
{
 struct mlx5dr_match_misc *misc_mask = &value->misc;

 DR_STE_SET_MASK_V(gre, bit_mask, gre_protocol, misc_mask, gre_protocol);
 DR_STE_SET_MASK_V(gre, bit_mask, gre_k_present, misc_mask, gre_k_present);
 DR_STE_SET_MASK_V(gre, bit_mask, gre_key_h, misc_mask, gre_key_h);
 DR_STE_SET_MASK_V(gre, bit_mask, gre_key_l, misc_mask, gre_key_l);

 DR_STE_SET_MASK_V(gre, bit_mask, gre_c_present, misc_mask, gre_c_present);
 DR_STE_SET_MASK_V(gre, bit_mask, gre_s_present, misc_mask, gre_s_present);
}
