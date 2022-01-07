
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

__attribute__((used)) static int dr_ste_build_eth_l3_ipv4_5_tuple_tag(struct mlx5dr_match_param *value,
      struct mlx5dr_ste_build *sb,
      u8 *hw_ste_p)
{
 struct dr_hw_ste_format *hw_ste = (struct dr_hw_ste_format *)hw_ste_p;
 struct mlx5dr_match_spec *spec = sb->inner ? &value->inner : &value->outer;
 u8 *tag = hw_ste->tag;

 DR_STE_SET_TAG(eth_l3_ipv4_5_tuple, tag, destination_address, spec, dst_ip_31_0);
 DR_STE_SET_TAG(eth_l3_ipv4_5_tuple, tag, source_address, spec, src_ip_31_0);
 DR_STE_SET_TAG(eth_l3_ipv4_5_tuple, tag, destination_port, spec, tcp_dport);
 DR_STE_SET_TAG(eth_l3_ipv4_5_tuple, tag, destination_port, spec, udp_dport);
 DR_STE_SET_TAG(eth_l3_ipv4_5_tuple, tag, source_port, spec, tcp_sport);
 DR_STE_SET_TAG(eth_l3_ipv4_5_tuple, tag, source_port, spec, udp_sport);
 DR_STE_SET_TAG(eth_l3_ipv4_5_tuple, tag, protocol, spec, ip_protocol);
 DR_STE_SET_TAG(eth_l3_ipv4_5_tuple, tag, fragmented, spec, frag);
 DR_STE_SET_TAG(eth_l3_ipv4_5_tuple, tag, dscp, spec, ip_dscp);
 DR_STE_SET_TAG(eth_l3_ipv4_5_tuple, tag, ecn, spec, ip_ecn);

 if (spec->tcp_flags) {
  DR_STE_SET_TCP_FLAGS(eth_l3_ipv4_5_tuple, tag, spec);
  spec->tcp_flags = 0;
 }

 return 0;
}
