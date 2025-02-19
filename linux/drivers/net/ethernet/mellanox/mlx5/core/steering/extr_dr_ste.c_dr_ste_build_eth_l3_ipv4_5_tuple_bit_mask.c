
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_match_spec {scalar_t__ tcp_flags; } ;
struct mlx5dr_match_param {struct mlx5dr_match_spec outer; struct mlx5dr_match_spec inner; } ;


 int DR_STE_SET_MASK_V (int ,int *,int ,struct mlx5dr_match_spec*,int ) ;
 int DR_STE_SET_TCP_FLAGS (int ,int *,struct mlx5dr_match_spec*) ;
 int destination_address ;
 int destination_port ;
 int dscp ;
 int dst_ip_31_0 ;
 int ecn ;
 int eth_l3_ipv4_5_tuple ;
 int frag ;
 int fragmented ;
 int ip_dscp ;
 int ip_ecn ;
 int ip_protocol ;
 int protocol ;
 int source_address ;
 int source_port ;
 int src_ip_31_0 ;
 int tcp_dport ;
 int tcp_sport ;
 int udp_dport ;
 int udp_sport ;

__attribute__((used)) static void dr_ste_build_eth_l3_ipv4_5_tuple_bit_mask(struct mlx5dr_match_param *value,
            bool inner,
            u8 *bit_mask)
{
 struct mlx5dr_match_spec *mask = inner ? &value->inner : &value->outer;

 DR_STE_SET_MASK_V(eth_l3_ipv4_5_tuple, bit_mask,
     destination_address, mask, dst_ip_31_0);
 DR_STE_SET_MASK_V(eth_l3_ipv4_5_tuple, bit_mask,
     source_address, mask, src_ip_31_0);
 DR_STE_SET_MASK_V(eth_l3_ipv4_5_tuple, bit_mask,
     destination_port, mask, tcp_dport);
 DR_STE_SET_MASK_V(eth_l3_ipv4_5_tuple, bit_mask,
     destination_port, mask, udp_dport);
 DR_STE_SET_MASK_V(eth_l3_ipv4_5_tuple, bit_mask,
     source_port, mask, tcp_sport);
 DR_STE_SET_MASK_V(eth_l3_ipv4_5_tuple, bit_mask,
     source_port, mask, udp_sport);
 DR_STE_SET_MASK_V(eth_l3_ipv4_5_tuple, bit_mask,
     protocol, mask, ip_protocol);
 DR_STE_SET_MASK_V(eth_l3_ipv4_5_tuple, bit_mask,
     fragmented, mask, frag);
 DR_STE_SET_MASK_V(eth_l3_ipv4_5_tuple, bit_mask,
     dscp, mask, ip_dscp);
 DR_STE_SET_MASK_V(eth_l3_ipv4_5_tuple, bit_mask,
     ecn, mask, ip_ecn);

 if (mask->tcp_flags) {
  DR_STE_SET_TCP_FLAGS(eth_l3_ipv4_5_tuple, bit_mask, mask);
  mask->tcp_flags = 0;
 }
}
