
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_match_spec {int smac_47_16; int smac_15_0; scalar_t__ svlan_tag; scalar_t__ cvlan_tag; } ;
struct mlx5dr_match_param {struct mlx5dr_match_spec outer; struct mlx5dr_match_spec inner; } ;


 int DR_STE_SET_MASK (int ,int *,int ,struct mlx5dr_match_spec*,int ) ;
 int DR_STE_SET_MASK_V (int ,int *,int ,struct mlx5dr_match_spec*,int ) ;
 int EINVAL ;
 int MLX5_SET (int ,int *,int ,int) ;
 int dmac_15_0 ;
 int dmac_47_16 ;
 int eth_l2_src_dst ;
 int first_cfi ;
 int first_prio ;
 int first_priority ;
 int first_vid ;
 int first_vlan_id ;
 int first_vlan_qualifier ;
 int ip_version ;
 int l3_type ;
 int pr_info (char*) ;
 int smac_31_0 ;
 int smac_47_32 ;
 int ste_eth_l2_src_dst ;

__attribute__((used)) static int dr_ste_build_eth_l2_src_des_bit_mask(struct mlx5dr_match_param *value,
      bool inner, u8 *bit_mask)
{
 struct mlx5dr_match_spec *mask = inner ? &value->inner : &value->outer;

 DR_STE_SET_MASK_V(eth_l2_src_dst, bit_mask, dmac_47_16, mask, dmac_47_16);
 DR_STE_SET_MASK_V(eth_l2_src_dst, bit_mask, dmac_15_0, mask, dmac_15_0);

 if (mask->smac_47_16 || mask->smac_15_0) {
  MLX5_SET(ste_eth_l2_src_dst, bit_mask, smac_47_32,
    mask->smac_47_16 >> 16);
  MLX5_SET(ste_eth_l2_src_dst, bit_mask, smac_31_0,
    mask->smac_47_16 << 16 | mask->smac_15_0);
  mask->smac_47_16 = 0;
  mask->smac_15_0 = 0;
 }

 DR_STE_SET_MASK_V(eth_l2_src_dst, bit_mask, first_vlan_id, mask, first_vid);
 DR_STE_SET_MASK_V(eth_l2_src_dst, bit_mask, first_cfi, mask, first_cfi);
 DR_STE_SET_MASK_V(eth_l2_src_dst, bit_mask, first_priority, mask, first_prio);
 DR_STE_SET_MASK(eth_l2_src_dst, bit_mask, l3_type, mask, ip_version);

 if (mask->cvlan_tag) {
  MLX5_SET(ste_eth_l2_src_dst, bit_mask, first_vlan_qualifier, -1);
  mask->cvlan_tag = 0;
 } else if (mask->svlan_tag) {
  MLX5_SET(ste_eth_l2_src_dst, bit_mask, first_vlan_qualifier, -1);
  mask->svlan_tag = 0;
 }

 if (mask->cvlan_tag || mask->svlan_tag) {
  pr_info("Invalid c/svlan mask configuration\n");
  return -EINVAL;
 }

 return 0;
}
