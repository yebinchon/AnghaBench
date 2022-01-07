
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_match_misc3 {int dummy; } ;
struct mlx5dr_match_param {struct mlx5dr_match_misc3 misc3; } ;


 int DR_STE_SET_MASK_V (int ,int *,int ,struct mlx5dr_match_misc3*,int ) ;
 int ack_num ;
 int eth_l4_misc ;
 int inner_tcp_ack_num ;
 int inner_tcp_seq_num ;
 int outer_tcp_ack_num ;
 int outer_tcp_seq_num ;
 int seq_num ;

__attribute__((used)) static void dr_ste_build_eth_l4_misc_bit_mask(struct mlx5dr_match_param *value,
           bool inner, u8 *bit_mask)
{
 struct mlx5dr_match_misc3 *misc_3_mask = &value->misc3;

 if (inner) {
  DR_STE_SET_MASK_V(eth_l4_misc, bit_mask, seq_num, misc_3_mask,
      inner_tcp_seq_num);
  DR_STE_SET_MASK_V(eth_l4_misc, bit_mask, ack_num, misc_3_mask,
      inner_tcp_ack_num);
 } else {
  DR_STE_SET_MASK_V(eth_l4_misc, bit_mask, seq_num, misc_3_mask,
      outer_tcp_seq_num);
  DR_STE_SET_MASK_V(eth_l4_misc, bit_mask, ack_num, misc_3_mask,
      outer_tcp_ack_num);
 }
}
