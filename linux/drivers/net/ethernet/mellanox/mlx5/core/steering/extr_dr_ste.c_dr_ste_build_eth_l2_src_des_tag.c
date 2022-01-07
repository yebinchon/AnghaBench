
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_ste_build {scalar_t__ inner; } ;
struct mlx5dr_match_spec {int smac_47_16; int smac_15_0; scalar_t__ ip_version; scalar_t__ svlan_tag; scalar_t__ cvlan_tag; } ;
struct mlx5dr_match_param {struct mlx5dr_match_spec outer; struct mlx5dr_match_spec inner; } ;
struct dr_hw_ste_format {int * tag; } ;


 int DR_STE_CVLAN ;
 int DR_STE_SET_TAG (int ,int *,int ,struct mlx5dr_match_spec*,int ) ;
 int DR_STE_SVLAN ;
 int EINVAL ;
 scalar_t__ IP_VERSION_IPV4 ;
 scalar_t__ IP_VERSION_IPV6 ;
 int MLX5_SET (int ,int *,int ,int) ;
 int STE_IPV4 ;
 int STE_IPV6 ;
 int dmac_15_0 ;
 int dmac_47_16 ;
 int eth_l2_src_dst ;
 int first_cfi ;
 int first_prio ;
 int first_priority ;
 int first_vid ;
 int first_vlan_id ;
 int first_vlan_qualifier ;
 int l3_type ;
 int pr_info (char*) ;
 int smac_31_0 ;
 int smac_47_32 ;
 int ste_eth_l2_src_dst ;

__attribute__((used)) static int dr_ste_build_eth_l2_src_des_tag(struct mlx5dr_match_param *value,
        struct mlx5dr_ste_build *sb,
        u8 *hw_ste_p)
{
 struct mlx5dr_match_spec *spec = sb->inner ? &value->inner : &value->outer;
 struct dr_hw_ste_format *hw_ste = (struct dr_hw_ste_format *)hw_ste_p;
 u8 *tag = hw_ste->tag;

 DR_STE_SET_TAG(eth_l2_src_dst, tag, dmac_47_16, spec, dmac_47_16);
 DR_STE_SET_TAG(eth_l2_src_dst, tag, dmac_15_0, spec, dmac_15_0);

 if (spec->smac_47_16 || spec->smac_15_0) {
  MLX5_SET(ste_eth_l2_src_dst, tag, smac_47_32,
    spec->smac_47_16 >> 16);
  MLX5_SET(ste_eth_l2_src_dst, tag, smac_31_0,
    spec->smac_47_16 << 16 | spec->smac_15_0);
  spec->smac_47_16 = 0;
  spec->smac_15_0 = 0;
 }

 if (spec->ip_version) {
  if (spec->ip_version == IP_VERSION_IPV4) {
   MLX5_SET(ste_eth_l2_src_dst, tag, l3_type, STE_IPV4);
   spec->ip_version = 0;
  } else if (spec->ip_version == IP_VERSION_IPV6) {
   MLX5_SET(ste_eth_l2_src_dst, tag, l3_type, STE_IPV6);
   spec->ip_version = 0;
  } else {
   pr_info("Unsupported ip_version value\n");
   return -EINVAL;
  }
 }

 DR_STE_SET_TAG(eth_l2_src_dst, tag, first_vlan_id, spec, first_vid);
 DR_STE_SET_TAG(eth_l2_src_dst, tag, first_cfi, spec, first_cfi);
 DR_STE_SET_TAG(eth_l2_src_dst, tag, first_priority, spec, first_prio);

 if (spec->cvlan_tag) {
  MLX5_SET(ste_eth_l2_src_dst, tag, first_vlan_qualifier, DR_STE_CVLAN);
  spec->cvlan_tag = 0;
 } else if (spec->svlan_tag) {
  MLX5_SET(ste_eth_l2_src_dst, tag, first_vlan_qualifier, DR_STE_SVLAN);
  spec->svlan_tag = 0;
 }
 return 0;
}
