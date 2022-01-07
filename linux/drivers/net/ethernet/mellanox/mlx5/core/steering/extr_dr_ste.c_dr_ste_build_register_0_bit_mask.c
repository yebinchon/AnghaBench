
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_match_misc2 {int dummy; } ;
struct mlx5dr_match_param {struct mlx5dr_match_misc2 misc2; } ;


 int DR_STE_SET_MASK_V (int ,int *,int ,struct mlx5dr_match_misc2*,int ) ;
 int metadata_reg_c_0 ;
 int metadata_reg_c_1 ;
 int metadata_reg_c_2 ;
 int metadata_reg_c_3 ;
 int register_0 ;
 int register_0_h ;
 int register_0_l ;
 int register_1_h ;
 int register_1_l ;

__attribute__((used)) static void dr_ste_build_register_0_bit_mask(struct mlx5dr_match_param *value,
          u8 *bit_mask)
{
 struct mlx5dr_match_misc2 *misc_2_mask = &value->misc2;

 DR_STE_SET_MASK_V(register_0, bit_mask, register_0_h,
     misc_2_mask, metadata_reg_c_0);
 DR_STE_SET_MASK_V(register_0, bit_mask, register_0_l,
     misc_2_mask, metadata_reg_c_1);
 DR_STE_SET_MASK_V(register_0, bit_mask, register_1_h,
     misc_2_mask, metadata_reg_c_2);
 DR_STE_SET_MASK_V(register_0, bit_mask, register_1_l,
     misc_2_mask, metadata_reg_c_3);
}
