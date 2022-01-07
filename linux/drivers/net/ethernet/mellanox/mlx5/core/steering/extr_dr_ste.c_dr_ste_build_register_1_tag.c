
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
 int metadata_reg_c_4 ;
 int metadata_reg_c_5 ;
 int metadata_reg_c_6 ;
 int metadata_reg_c_7 ;
 int register_1 ;
 int register_2_h ;
 int register_2_l ;
 int register_3_h ;
 int register_3_l ;

__attribute__((used)) static int dr_ste_build_register_1_tag(struct mlx5dr_match_param *value,
           struct mlx5dr_ste_build *sb,
           u8 *hw_ste_p)
{
 struct dr_hw_ste_format *hw_ste = (struct dr_hw_ste_format *)hw_ste_p;
 struct mlx5dr_match_misc2 *misc2 = &value->misc2;
 u8 *tag = hw_ste->tag;

 DR_STE_SET_TAG(register_1, tag, register_2_h, misc2, metadata_reg_c_4);
 DR_STE_SET_TAG(register_1, tag, register_2_l, misc2, metadata_reg_c_5);
 DR_STE_SET_TAG(register_1, tag, register_3_h, misc2, metadata_reg_c_6);
 DR_STE_SET_TAG(register_1, tag, register_3_l, misc2, metadata_reg_c_7);

 return 0;
}
