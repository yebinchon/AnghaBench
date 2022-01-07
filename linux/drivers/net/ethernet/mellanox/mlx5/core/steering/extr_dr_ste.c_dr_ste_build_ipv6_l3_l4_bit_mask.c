
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_match_spec {scalar_t__ tcp_flags; } ;
struct mlx5dr_match_param {struct mlx5dr_match_spec outer; struct mlx5dr_match_spec inner; } ;


 int DR_STE_SET_MASK_V (int ,int *,int ,struct mlx5dr_match_spec*,int ) ;
 int DR_STE_SET_TCP_FLAGS (int ,int *,struct mlx5dr_match_spec*) ;
 int dscp ;
 int dst_port ;
 int ecn ;
 int eth_l4 ;
 int frag ;
 int fragmented ;
 int ip_dscp ;
 int ip_ecn ;
 int ip_protocol ;
 int ipv6_hop_limit ;
 int protocol ;
 int src_port ;
 int tcp_dport ;
 int tcp_sport ;
 int ttl_hoplimit ;
 int udp_dport ;
 int udp_sport ;

__attribute__((used)) static void dr_ste_build_ipv6_l3_l4_bit_mask(struct mlx5dr_match_param *value,
          bool inner, u8 *bit_mask)
{
 struct mlx5dr_match_spec *mask = inner ? &value->inner : &value->outer;

 DR_STE_SET_MASK_V(eth_l4, bit_mask, dst_port, mask, tcp_dport);
 DR_STE_SET_MASK_V(eth_l4, bit_mask, src_port, mask, tcp_sport);
 DR_STE_SET_MASK_V(eth_l4, bit_mask, dst_port, mask, udp_dport);
 DR_STE_SET_MASK_V(eth_l4, bit_mask, src_port, mask, udp_sport);
 DR_STE_SET_MASK_V(eth_l4, bit_mask, protocol, mask, ip_protocol);
 DR_STE_SET_MASK_V(eth_l4, bit_mask, fragmented, mask, frag);
 DR_STE_SET_MASK_V(eth_l4, bit_mask, dscp, mask, ip_dscp);
 DR_STE_SET_MASK_V(eth_l4, bit_mask, ecn, mask, ip_ecn);
 DR_STE_SET_MASK_V(eth_l4, bit_mask, ipv6_hop_limit, mask, ttl_hoplimit);

 if (mask->tcp_flags) {
  DR_STE_SET_TCP_FLAGS(eth_l4, bit_mask, mask);
  mask->tcp_flags = 0;
 }
}
