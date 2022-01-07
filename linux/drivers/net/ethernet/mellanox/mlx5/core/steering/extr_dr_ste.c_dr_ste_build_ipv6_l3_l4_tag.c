
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_ste_build {scalar_t__ inner; } ;
struct mlx5dr_match_spec {scalar_t__ tcp_flags; } ;
struct mlx5dr_match_param {struct mlx5dr_match_spec outer; struct mlx5dr_match_spec inner; } ;
struct dr_hw_ste_format {int * tag; } ;


 int DR_STE_SET_TAG (int ,int *,int ,struct mlx5dr_match_spec*,int ) ;
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

__attribute__((used)) static int dr_ste_build_ipv6_l3_l4_tag(struct mlx5dr_match_param *value,
           struct mlx5dr_ste_build *sb,
           u8 *hw_ste_p)
{
 struct mlx5dr_match_spec *spec = sb->inner ? &value->inner : &value->outer;
 struct dr_hw_ste_format *hw_ste = (struct dr_hw_ste_format *)hw_ste_p;
 u8 *tag = hw_ste->tag;

 DR_STE_SET_TAG(eth_l4, tag, dst_port, spec, tcp_dport);
 DR_STE_SET_TAG(eth_l4, tag, src_port, spec, tcp_sport);
 DR_STE_SET_TAG(eth_l4, tag, dst_port, spec, udp_dport);
 DR_STE_SET_TAG(eth_l4, tag, src_port, spec, udp_sport);
 DR_STE_SET_TAG(eth_l4, tag, protocol, spec, ip_protocol);
 DR_STE_SET_TAG(eth_l4, tag, fragmented, spec, frag);
 DR_STE_SET_TAG(eth_l4, tag, dscp, spec, ip_dscp);
 DR_STE_SET_TAG(eth_l4, tag, ecn, spec, ip_ecn);
 DR_STE_SET_TAG(eth_l4, tag, ipv6_hop_limit, spec, ttl_hoplimit);

 if (spec->tcp_flags) {
  DR_STE_SET_TCP_FLAGS(eth_l4, tag, spec);
  spec->tcp_flags = 0;
 }

 return 0;
}
