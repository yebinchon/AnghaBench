
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_match_misc2 {int dummy; } ;
struct mlx5dr_match_param {struct mlx5dr_match_misc2 misc2; } ;


 int DR_STE_SET_MASK_V (int ,int *,int ,struct mlx5dr_match_misc2*,int ) ;
 int metadata_reg_c_4 ;
 int metadata_reg_c_5 ;
 int metadata_reg_c_6 ;
 int metadata_reg_c_7 ;
 int register_1 ;
 int register_2_h ;
 int register_2_l ;
 int register_3_h ;
 int register_3_l ;

__attribute__((used)) static void dr_ste_build_register_1_bit_mask(struct mlx5dr_match_param *value,
          u8 *bit_mask)
{
 struct mlx5dr_match_misc2 *misc_2_mask = &value->misc2;

 DR_STE_SET_MASK_V(register_1, bit_mask, register_2_h,
     misc_2_mask, metadata_reg_c_4);
 DR_STE_SET_MASK_V(register_1, bit_mask, register_2_l,
     misc_2_mask, metadata_reg_c_5);
 DR_STE_SET_MASK_V(register_1, bit_mask, register_3_h,
     misc_2_mask, metadata_reg_c_6);
 DR_STE_SET_MASK_V(register_1, bit_mask, register_3_l,
     misc_2_mask, metadata_reg_c_7);
}
