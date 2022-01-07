
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_ste_build {int dummy; } ;
struct mlx5dr_match_misc2 {int dummy; } ;
struct mlx5dr_match_param {struct mlx5dr_match_misc2 misc2; } ;
struct dr_hw_ste_format {int * tag; } ;


 int DR_STE_SET_TAG (int ,int *,int ,struct mlx5dr_match_misc2*,int ) ;
 int general_purpose ;
 int general_purpose_lookup_field ;
 int metadata_reg_a ;

__attribute__((used)) static int dr_ste_build_general_purpose_tag(struct mlx5dr_match_param *value,
         struct mlx5dr_ste_build *sb,
         u8 *hw_ste_p)
{
 struct dr_hw_ste_format *hw_ste = (struct dr_hw_ste_format *)hw_ste_p;
 struct mlx5dr_match_misc2 *misc_2_mask = &value->misc2;
 u8 *tag = hw_ste->tag;

 DR_STE_SET_TAG(general_purpose, tag, general_purpose_lookup_field,
         misc_2_mask, metadata_reg_a);

 return 0;
}
