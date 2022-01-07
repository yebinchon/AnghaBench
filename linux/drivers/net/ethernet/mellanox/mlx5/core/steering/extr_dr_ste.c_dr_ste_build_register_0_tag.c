
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
 int metadata_reg_c_0 ;
 int metadata_reg_c_1 ;
 int metadata_reg_c_2 ;
 int metadata_reg_c_3 ;
 int register_0 ;
 int register_0_h ;
 int register_0_l ;
 int register_1_h ;
 int register_1_l ;

__attribute__((used)) static int dr_ste_build_register_0_tag(struct mlx5dr_match_param *value,
           struct mlx5dr_ste_build *sb,
           u8 *hw_ste_p)
{
 struct dr_hw_ste_format *hw_ste = (struct dr_hw_ste_format *)hw_ste_p;
 struct mlx5dr_match_misc2 *misc2 = &value->misc2;
 u8 *tag = hw_ste->tag;

 DR_STE_SET_TAG(register_0, tag, register_0_h, misc2, metadata_reg_c_0);
 DR_STE_SET_TAG(register_0, tag, register_0_l, misc2, metadata_reg_c_1);
 DR_STE_SET_TAG(register_0, tag, register_1_h, misc2, metadata_reg_c_2);
 DR_STE_SET_TAG(register_0, tag, register_1_l, misc2, metadata_reg_c_3);

 return 0;
}
