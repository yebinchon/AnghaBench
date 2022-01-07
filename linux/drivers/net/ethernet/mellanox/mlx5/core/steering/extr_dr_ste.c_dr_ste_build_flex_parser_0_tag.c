
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_ste_build {int dummy; } ;
struct mlx5dr_match_misc2 {int dummy; } ;
struct mlx5dr_match_param {struct mlx5dr_match_misc2 misc2; } ;
struct dr_hw_ste_format {int * tag; } ;


 scalar_t__ DR_STE_IS_OUTER_MPLS_OVER_GRE_SET (struct mlx5dr_match_misc2*) ;
 int DR_STE_SET_TAG (int ,int *,int ,struct mlx5dr_match_misc2*,int ) ;
 int flex_parser_0 ;
 int outer_first_mpls_over_gre_exp ;
 int outer_first_mpls_over_gre_label ;
 int outer_first_mpls_over_gre_s_bos ;
 int outer_first_mpls_over_gre_ttl ;
 int outer_first_mpls_over_udp_exp ;
 int outer_first_mpls_over_udp_label ;
 int outer_first_mpls_over_udp_s_bos ;
 int outer_first_mpls_over_udp_ttl ;
 int parser_3_exp ;
 int parser_3_label ;
 int parser_3_s_bos ;
 int parser_3_ttl ;

__attribute__((used)) static int dr_ste_build_flex_parser_0_tag(struct mlx5dr_match_param *value,
       struct mlx5dr_ste_build *sb,
       u8 *hw_ste_p)
{
 struct dr_hw_ste_format *hw_ste = (struct dr_hw_ste_format *)hw_ste_p;
 struct mlx5dr_match_misc2 *misc_2_mask = &value->misc2;
 u8 *tag = hw_ste->tag;

 if (DR_STE_IS_OUTER_MPLS_OVER_GRE_SET(misc_2_mask)) {
  DR_STE_SET_TAG(flex_parser_0, tag, parser_3_label,
          misc_2_mask, outer_first_mpls_over_gre_label);

  DR_STE_SET_TAG(flex_parser_0, tag, parser_3_exp,
          misc_2_mask, outer_first_mpls_over_gre_exp);

  DR_STE_SET_TAG(flex_parser_0, tag, parser_3_s_bos,
          misc_2_mask, outer_first_mpls_over_gre_s_bos);

  DR_STE_SET_TAG(flex_parser_0, tag, parser_3_ttl,
          misc_2_mask, outer_first_mpls_over_gre_ttl);
 } else {
  DR_STE_SET_TAG(flex_parser_0, tag, parser_3_label,
          misc_2_mask, outer_first_mpls_over_udp_label);

  DR_STE_SET_TAG(flex_parser_0, tag, parser_3_exp,
          misc_2_mask, outer_first_mpls_over_udp_exp);

  DR_STE_SET_TAG(flex_parser_0, tag, parser_3_s_bos,
          misc_2_mask, outer_first_mpls_over_udp_s_bos);

  DR_STE_SET_TAG(flex_parser_0, tag, parser_3_ttl,
          misc_2_mask, outer_first_mpls_over_udp_ttl);
 }
 return 0;
}
