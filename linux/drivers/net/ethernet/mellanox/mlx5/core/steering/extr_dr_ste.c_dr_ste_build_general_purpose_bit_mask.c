
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_match_misc2 {int dummy; } ;
struct mlx5dr_match_param {struct mlx5dr_match_misc2 misc2; } ;


 int DR_STE_SET_MASK_V (int ,int *,int ,struct mlx5dr_match_misc2*,int ) ;
 int general_purpose ;
 int general_purpose_lookup_field ;
 int metadata_reg_a ;

__attribute__((used)) static void dr_ste_build_general_purpose_bit_mask(struct mlx5dr_match_param *value,
        bool inner, u8 *bit_mask)
{
 struct mlx5dr_match_misc2 *misc_2_mask = &value->misc2;

 DR_STE_SET_MASK_V(general_purpose, bit_mask,
     general_purpose_lookup_field, misc_2_mask,
     metadata_reg_a);
}
