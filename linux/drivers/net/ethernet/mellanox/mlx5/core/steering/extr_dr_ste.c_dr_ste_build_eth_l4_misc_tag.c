
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_ste_build {scalar_t__ inner; } ;
struct mlx5dr_match_misc3 {int dummy; } ;
struct mlx5dr_match_param {struct mlx5dr_match_misc3 misc3; } ;
struct dr_hw_ste_format {int * tag; } ;


 int DR_STE_SET_TAG (int ,int *,int ,struct mlx5dr_match_misc3*,int ) ;
 int ack_num ;
 int eth_l4_misc ;
 int inner_tcp_ack_num ;
 int inner_tcp_seq_num ;
 int outer_tcp_ack_num ;
 int outer_tcp_seq_num ;
 int seq_num ;

__attribute__((used)) static int dr_ste_build_eth_l4_misc_tag(struct mlx5dr_match_param *value,
     struct mlx5dr_ste_build *sb,
     u8 *hw_ste_p)
{
 struct dr_hw_ste_format *hw_ste = (struct dr_hw_ste_format *)hw_ste_p;
 struct mlx5dr_match_misc3 *misc3 = &value->misc3;
 u8 *tag = hw_ste->tag;

 if (sb->inner) {
  DR_STE_SET_TAG(eth_l4_misc, tag, seq_num, misc3, inner_tcp_seq_num);
  DR_STE_SET_TAG(eth_l4_misc, tag, ack_num, misc3, inner_tcp_ack_num);
 } else {
  DR_STE_SET_TAG(eth_l4_misc, tag, seq_num, misc3, outer_tcp_seq_num);
  DR_STE_SET_TAG(eth_l4_misc, tag, ack_num, misc3, outer_tcp_ack_num);
 }

 return 0;
}
