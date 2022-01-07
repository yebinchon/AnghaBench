
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_match_spec {scalar_t__ ip_version; scalar_t__ outer_second_svlan_tag; scalar_t__ outer_second_cvlan_tag; scalar_t__ inner_second_svlan_tag; scalar_t__ inner_second_cvlan_tag; scalar_t__ svlan_tag; scalar_t__ cvlan_tag; } ;
struct mlx5dr_match_param {struct mlx5dr_match_spec misc; struct mlx5dr_match_spec outer; struct mlx5dr_match_spec inner; } ;
struct mlx5dr_match_misc {scalar_t__ ip_version; scalar_t__ outer_second_svlan_tag; scalar_t__ outer_second_cvlan_tag; scalar_t__ inner_second_svlan_tag; scalar_t__ inner_second_cvlan_tag; scalar_t__ svlan_tag; scalar_t__ cvlan_tag; } ;
struct dr_hw_ste_format {int * tag; } ;


 int DR_STE_CVLAN ;
 int DR_STE_SET_TAG (int ,int *,int ,struct mlx5dr_match_spec*,int ) ;
 int DR_STE_SVLAN ;
 int EINVAL ;
 scalar_t__ IP_VERSION_IPV4 ;
 scalar_t__ IP_VERSION_IPV6 ;
 int MLX5_SET (int ,int *,int ,int ) ;
 int STE_IPV4 ;
 int STE_IPV6 ;
 int eth_l2_src ;
 int ethertype ;
 int first_cfi ;
 int first_prio ;
 int first_priority ;
 int first_vid ;
 int first_vlan_id ;
 int first_vlan_qualifier ;
 int frag ;
 int inner_second_cfi ;
 int inner_second_prio ;
 int inner_second_vid ;
 int ip_fragmented ;
 int l3_ethertype ;
 int l3_type ;
 int outer_second_cfi ;
 int outer_second_prio ;
 int outer_second_vid ;
 int pr_info (char*) ;
 int second_cfi ;
 int second_priority ;
 int second_vlan_id ;
 int second_vlan_qualifier ;
 int ste_eth_l2_src ;

__attribute__((used)) static int dr_ste_build_eth_l2_src_or_dst_tag(struct mlx5dr_match_param *value,
           bool inner, u8 *hw_ste_p)
{
 struct dr_hw_ste_format *hw_ste = (struct dr_hw_ste_format *)hw_ste_p;
 struct mlx5dr_match_spec *spec = inner ? &value->inner : &value->outer;
 struct mlx5dr_match_misc *misc_spec = &value->misc;
 u8 *tag = hw_ste->tag;

 DR_STE_SET_TAG(eth_l2_src, tag, first_vlan_id, spec, first_vid);
 DR_STE_SET_TAG(eth_l2_src, tag, first_cfi, spec, first_cfi);
 DR_STE_SET_TAG(eth_l2_src, tag, first_priority, spec, first_prio);
 DR_STE_SET_TAG(eth_l2_src, tag, ip_fragmented, spec, frag);
 DR_STE_SET_TAG(eth_l2_src, tag, l3_ethertype, spec, ethertype);

 if (spec->ip_version) {
  if (spec->ip_version == IP_VERSION_IPV4) {
   MLX5_SET(ste_eth_l2_src, tag, l3_type, STE_IPV4);
   spec->ip_version = 0;
  } else if (spec->ip_version == IP_VERSION_IPV6) {
   MLX5_SET(ste_eth_l2_src, tag, l3_type, STE_IPV6);
   spec->ip_version = 0;
  } else {
   pr_info("Unsupported ip_version value\n");
   return -EINVAL;
  }
 }

 if (spec->cvlan_tag) {
  MLX5_SET(ste_eth_l2_src, tag, first_vlan_qualifier, DR_STE_CVLAN);
  spec->cvlan_tag = 0;
 } else if (spec->svlan_tag) {
  MLX5_SET(ste_eth_l2_src, tag, first_vlan_qualifier, DR_STE_SVLAN);
  spec->svlan_tag = 0;
 }

 if (inner) {
  if (misc_spec->inner_second_cvlan_tag) {
   MLX5_SET(ste_eth_l2_src, tag, second_vlan_qualifier, DR_STE_CVLAN);
   misc_spec->inner_second_cvlan_tag = 0;
  } else if (misc_spec->inner_second_svlan_tag) {
   MLX5_SET(ste_eth_l2_src, tag, second_vlan_qualifier, DR_STE_SVLAN);
   misc_spec->inner_second_svlan_tag = 0;
  }

  DR_STE_SET_TAG(eth_l2_src, tag, second_vlan_id, misc_spec, inner_second_vid);
  DR_STE_SET_TAG(eth_l2_src, tag, second_cfi, misc_spec, inner_second_cfi);
  DR_STE_SET_TAG(eth_l2_src, tag, second_priority, misc_spec, inner_second_prio);
 } else {
  if (misc_spec->outer_second_cvlan_tag) {
   MLX5_SET(ste_eth_l2_src, tag, second_vlan_qualifier, DR_STE_CVLAN);
   misc_spec->outer_second_cvlan_tag = 0;
  } else if (misc_spec->outer_second_svlan_tag) {
   MLX5_SET(ste_eth_l2_src, tag, second_vlan_qualifier, DR_STE_SVLAN);
   misc_spec->outer_second_svlan_tag = 0;
  }
  DR_STE_SET_TAG(eth_l2_src, tag, second_vlan_id, misc_spec, outer_second_vid);
  DR_STE_SET_TAG(eth_l2_src, tag, second_cfi, misc_spec, outer_second_cfi);
  DR_STE_SET_TAG(eth_l2_src, tag, second_priority, misc_spec, outer_second_prio);
 }

 return 0;
}
