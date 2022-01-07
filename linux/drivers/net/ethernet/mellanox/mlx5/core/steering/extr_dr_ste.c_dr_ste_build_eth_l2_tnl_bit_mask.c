
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_match_spec {scalar_t__ svlan_tag; scalar_t__ cvlan_tag; } ;
struct mlx5dr_match_misc {int vxlan_vni; } ;
struct mlx5dr_match_param {struct mlx5dr_match_misc misc; struct mlx5dr_match_spec outer; struct mlx5dr_match_spec inner; } ;


 int DR_STE_SET_MASK (int ,int *,int ,struct mlx5dr_match_spec*,int ) ;
 int DR_STE_SET_MASK_V (int ,int *,int ,struct mlx5dr_match_spec*,int ) ;
 int MLX5_SET (int ,int *,int ,int) ;
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
 int ip_version ;
 int l2_tunneling_network_id ;
 int l3_ethertype ;
 int l3_type ;
 int ste_eth_l2_tnl ;

__attribute__((used)) static void dr_ste_build_eth_l2_tnl_bit_mask(struct mlx5dr_match_param *value,
          bool inner, u8 *bit_mask)
{
 struct mlx5dr_match_spec *mask = inner ? &value->inner : &value->outer;
 struct mlx5dr_match_misc *misc = &value->misc;

 DR_STE_SET_MASK_V(eth_l2_tnl, bit_mask, dmac_47_16, mask, dmac_47_16);
 DR_STE_SET_MASK_V(eth_l2_tnl, bit_mask, dmac_15_0, mask, dmac_15_0);
 DR_STE_SET_MASK_V(eth_l2_tnl, bit_mask, first_vlan_id, mask, first_vid);
 DR_STE_SET_MASK_V(eth_l2_tnl, bit_mask, first_cfi, mask, first_cfi);
 DR_STE_SET_MASK_V(eth_l2_tnl, bit_mask, first_priority, mask, first_prio);
 DR_STE_SET_MASK_V(eth_l2_tnl, bit_mask, ip_fragmented, mask, frag);
 DR_STE_SET_MASK_V(eth_l2_tnl, bit_mask, l3_ethertype, mask, ethertype);
 DR_STE_SET_MASK(eth_l2_tnl, bit_mask, l3_type, mask, ip_version);

 if (misc->vxlan_vni) {
  MLX5_SET(ste_eth_l2_tnl, bit_mask,
    l2_tunneling_network_id, (misc->vxlan_vni << 8));
  misc->vxlan_vni = 0;
 }

 if (mask->svlan_tag || mask->cvlan_tag) {
  MLX5_SET(ste_eth_l2_tnl, bit_mask, first_vlan_qualifier, -1);
  mask->cvlan_tag = 0;
  mask->svlan_tag = 0;
 }
}
