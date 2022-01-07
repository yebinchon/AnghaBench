
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_match_spec {scalar_t__ outer_second_svlan_tag; scalar_t__ outer_second_cvlan_tag; scalar_t__ inner_second_svlan_tag; scalar_t__ inner_second_cvlan_tag; scalar_t__ svlan_tag; scalar_t__ cvlan_tag; } ;
struct mlx5dr_match_param {struct mlx5dr_match_spec misc; struct mlx5dr_match_spec outer; struct mlx5dr_match_spec inner; } ;
struct mlx5dr_match_misc {scalar_t__ outer_second_svlan_tag; scalar_t__ outer_second_cvlan_tag; scalar_t__ inner_second_svlan_tag; scalar_t__ inner_second_cvlan_tag; scalar_t__ svlan_tag; scalar_t__ cvlan_tag; } ;


 int DR_STE_SET_MASK (int ,int *,int ,struct mlx5dr_match_spec*,int ) ;
 int DR_STE_SET_MASK_V (int ,int *,int ,struct mlx5dr_match_spec*,int ) ;
 int MLX5_SET (int ,int *,int ,int) ;
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
 int ip_version ;
 int l3_ethertype ;
 int l3_type ;
 int outer_second_cfi ;
 int outer_second_prio ;
 int outer_second_vid ;
 int second_cfi ;
 int second_priority ;
 int second_vlan_id ;
 int second_vlan_qualifier ;
 int ste_eth_l2_src ;

__attribute__((used)) static void
dr_ste_build_eth_l2_src_or_dst_bit_mask(struct mlx5dr_match_param *value,
     bool inner, u8 *bit_mask)
{
 struct mlx5dr_match_spec *mask = inner ? &value->inner : &value->outer;
 struct mlx5dr_match_misc *misc_mask = &value->misc;

 DR_STE_SET_MASK_V(eth_l2_src, bit_mask, first_vlan_id, mask, first_vid);
 DR_STE_SET_MASK_V(eth_l2_src, bit_mask, first_cfi, mask, first_cfi);
 DR_STE_SET_MASK_V(eth_l2_src, bit_mask, first_priority, mask, first_prio);
 DR_STE_SET_MASK_V(eth_l2_src, bit_mask, ip_fragmented, mask, frag);
 DR_STE_SET_MASK_V(eth_l2_src, bit_mask, l3_ethertype, mask, ethertype);
 DR_STE_SET_MASK(eth_l2_src, bit_mask, l3_type, mask, ip_version);

 if (mask->svlan_tag || mask->cvlan_tag) {
  MLX5_SET(ste_eth_l2_src, bit_mask, first_vlan_qualifier, -1);
  mask->cvlan_tag = 0;
  mask->svlan_tag = 0;
 }

 if (inner) {
  if (misc_mask->inner_second_cvlan_tag ||
      misc_mask->inner_second_svlan_tag) {
   MLX5_SET(ste_eth_l2_src, bit_mask, second_vlan_qualifier, -1);
   misc_mask->inner_second_cvlan_tag = 0;
   misc_mask->inner_second_svlan_tag = 0;
  }

  DR_STE_SET_MASK_V(eth_l2_src, bit_mask,
      second_vlan_id, misc_mask, inner_second_vid);
  DR_STE_SET_MASK_V(eth_l2_src, bit_mask,
      second_cfi, misc_mask, inner_second_cfi);
  DR_STE_SET_MASK_V(eth_l2_src, bit_mask,
      second_priority, misc_mask, inner_second_prio);
 } else {
  if (misc_mask->outer_second_cvlan_tag ||
      misc_mask->outer_second_svlan_tag) {
   MLX5_SET(ste_eth_l2_src, bit_mask, second_vlan_qualifier, -1);
   misc_mask->outer_second_cvlan_tag = 0;
   misc_mask->outer_second_svlan_tag = 0;
  }

  DR_STE_SET_MASK_V(eth_l2_src, bit_mask,
      second_vlan_id, misc_mask, outer_second_vid);
  DR_STE_SET_MASK_V(eth_l2_src, bit_mask,
      second_cfi, misc_mask, outer_second_cfi);
  DR_STE_SET_MASK_V(eth_l2_src, bit_mask,
      second_priority, misc_mask, outer_second_prio);
 }
}
