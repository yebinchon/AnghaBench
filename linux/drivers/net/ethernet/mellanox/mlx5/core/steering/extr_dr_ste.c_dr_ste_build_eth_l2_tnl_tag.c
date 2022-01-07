
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_ste_build {scalar_t__ inner; } ;
struct mlx5dr_match_spec {scalar_t__ ip_version; scalar_t__ svlan_tag; scalar_t__ cvlan_tag; } ;
struct mlx5dr_match_misc {int vxlan_vni; } ;
struct mlx5dr_match_param {struct mlx5dr_match_misc misc; struct mlx5dr_match_spec outer; struct mlx5dr_match_spec inner; } ;
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
 int eth_l2_tnl ;
 int ethertype ;
 int first_cfi ;
 int first_prio ;
 int first_priority ;
 int first_vid ;
 int first_vlan_id ;
 int first_vlan_qualifier ;
 int frag ;
 int ip_fragmented ;
 int l2_tunneling_network_id ;
 int l3_ethertype ;
 int l3_type ;
 int ste_eth_l2_tnl ;

__attribute__((used)) static int dr_ste_build_eth_l2_tnl_tag(struct mlx5dr_match_param *value,
           struct mlx5dr_ste_build *sb,
           u8 *hw_ste_p)
{
 struct mlx5dr_match_spec *spec = sb->inner ? &value->inner : &value->outer;
 struct dr_hw_ste_format *hw_ste = (struct dr_hw_ste_format *)hw_ste_p;
 struct mlx5dr_match_misc *misc = &value->misc;
 u8 *tag = hw_ste->tag;

 DR_STE_SET_TAG(eth_l2_tnl, tag, dmac_47_16, spec, dmac_47_16);
 DR_STE_SET_TAG(eth_l2_tnl, tag, dmac_15_0, spec, dmac_15_0);
 DR_STE_SET_TAG(eth_l2_tnl, tag, first_vlan_id, spec, first_vid);
 DR_STE_SET_TAG(eth_l2_tnl, tag, first_cfi, spec, first_cfi);
 DR_STE_SET_TAG(eth_l2_tnl, tag, ip_fragmented, spec, frag);
 DR_STE_SET_TAG(eth_l2_tnl, tag, first_priority, spec, first_prio);
 DR_STE_SET_TAG(eth_l2_tnl, tag, l3_ethertype, spec, ethertype);

 if (misc->vxlan_vni) {
  MLX5_SET(ste_eth_l2_tnl, tag, l2_tunneling_network_id,
    (misc->vxlan_vni << 8));
  misc->vxlan_vni = 0;
 }

 if (spec->cvlan_tag) {
  MLX5_SET(ste_eth_l2_tnl, tag, first_vlan_qualifier, DR_STE_CVLAN);
  spec->cvlan_tag = 0;
 } else if (spec->svlan_tag) {
  MLX5_SET(ste_eth_l2_tnl, tag, first_vlan_qualifier, DR_STE_SVLAN);
  spec->svlan_tag = 0;
 }

 if (spec->ip_version) {
  if (spec->ip_version == IP_VERSION_IPV4) {
   MLX5_SET(ste_eth_l2_tnl, tag, l3_type, STE_IPV4);
   spec->ip_version = 0;
  } else if (spec->ip_version == IP_VERSION_IPV6) {
   MLX5_SET(ste_eth_l2_tnl, tag, l3_type, STE_IPV6);
   spec->ip_version = 0;
  } else {
   return -EINVAL;
  }
 }

 return 0;
}
