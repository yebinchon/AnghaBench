
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_ste_build {int dummy; } ;
struct mlx5dr_match_misc {int dummy; } ;
struct mlx5dr_match_param {struct mlx5dr_match_misc misc; } ;
struct dr_hw_ste_format {int * tag; } ;


 int DR_STE_SET_TAG (int ,int *,int ,struct mlx5dr_match_misc*,int ) ;
 int gre ;
 int gre_c_present ;
 int gre_k_present ;
 int gre_key_h ;
 int gre_key_l ;
 int gre_protocol ;
 int gre_s_present ;

__attribute__((used)) static int dr_ste_build_gre_tag(struct mlx5dr_match_param *value,
    struct mlx5dr_ste_build *sb,
    u8 *hw_ste_p)
{
 struct dr_hw_ste_format *hw_ste = (struct dr_hw_ste_format *)hw_ste_p;
 struct mlx5dr_match_misc *misc = &value->misc;
 u8 *tag = hw_ste->tag;

 DR_STE_SET_TAG(gre, tag, gre_protocol, misc, gre_protocol);

 DR_STE_SET_TAG(gre, tag, gre_k_present, misc, gre_k_present);
 DR_STE_SET_TAG(gre, tag, gre_key_h, misc, gre_key_h);
 DR_STE_SET_TAG(gre, tag, gre_key_l, misc, gre_key_l);

 DR_STE_SET_TAG(gre, tag, gre_c_present, misc, gre_c_present);

 DR_STE_SET_TAG(gre, tag, gre_s_present, misc, gre_s_present);

 return 0;
}
