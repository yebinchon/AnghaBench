
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_match_misc3 {void* icmpv6_code; void* icmpv6_type; void* icmpv4_code; void* icmpv4_type; void* icmpv6_header_data; void* icmpv4_header_data; void* outer_vxlan_gpe_flags; void* outer_vxlan_gpe_next_protocol; void* outer_vxlan_gpe_vni; void* outer_tcp_ack_num; void* inner_tcp_ack_num; void* outer_tcp_seq_num; void* inner_tcp_seq_num; } ;


 void* MLX5_GET (int ,char*,int ) ;
 int fte_match_set_misc3 ;
 int icmp_code ;
 int icmp_header_data ;
 int icmp_type ;
 int icmpv6_code ;
 int icmpv6_header_data ;
 int icmpv6_type ;
 int inner_tcp_ack_num ;
 int inner_tcp_seq_num ;
 int outer_tcp_ack_num ;
 int outer_tcp_seq_num ;
 int outer_vxlan_gpe_flags ;
 int outer_vxlan_gpe_next_protocol ;
 int outer_vxlan_gpe_vni ;

__attribute__((used)) static void dr_ste_copy_mask_misc3(char *mask, struct mlx5dr_match_misc3 *spec)
{
 spec->inner_tcp_seq_num = MLX5_GET(fte_match_set_misc3, mask, inner_tcp_seq_num);
 spec->outer_tcp_seq_num = MLX5_GET(fte_match_set_misc3, mask, outer_tcp_seq_num);
 spec->inner_tcp_ack_num = MLX5_GET(fte_match_set_misc3, mask, inner_tcp_ack_num);
 spec->outer_tcp_ack_num = MLX5_GET(fte_match_set_misc3, mask, outer_tcp_ack_num);
 spec->outer_vxlan_gpe_vni =
  MLX5_GET(fte_match_set_misc3, mask, outer_vxlan_gpe_vni);
 spec->outer_vxlan_gpe_next_protocol =
  MLX5_GET(fte_match_set_misc3, mask, outer_vxlan_gpe_next_protocol);
 spec->outer_vxlan_gpe_flags =
  MLX5_GET(fte_match_set_misc3, mask, outer_vxlan_gpe_flags);
 spec->icmpv4_header_data = MLX5_GET(fte_match_set_misc3, mask, icmp_header_data);
 spec->icmpv6_header_data =
  MLX5_GET(fte_match_set_misc3, mask, icmpv6_header_data);
 spec->icmpv4_type = MLX5_GET(fte_match_set_misc3, mask, icmp_type);
 spec->icmpv4_code = MLX5_GET(fte_match_set_misc3, mask, icmp_code);
 spec->icmpv6_type = MLX5_GET(fte_match_set_misc3, mask, icmpv6_type);
 spec->icmpv6_code = MLX5_GET(fte_match_set_misc3, mask, icmpv6_code);
}
