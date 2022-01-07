
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_ste_build {scalar_t__ inner; } ;
struct mlx5dr_match_spec {int dummy; } ;
struct mlx5dr_match_param {struct mlx5dr_match_spec outer; struct mlx5dr_match_spec inner; } ;
struct dr_hw_ste_format {int * tag; } ;


 int DR_STE_SET_TAG (int ,int *,int ,struct mlx5dr_match_spec*,int ) ;
 int dst_ip_127_96 ;
 int dst_ip_31_0 ;
 int dst_ip_63_32 ;
 int dst_ip_95_64 ;
 int eth_l3_ipv6_dst ;

__attribute__((used)) static int dr_ste_build_eth_l3_ipv6_dst_tag(struct mlx5dr_match_param *value,
         struct mlx5dr_ste_build *sb,
         u8 *hw_ste_p)
{
 struct dr_hw_ste_format *hw_ste = (struct dr_hw_ste_format *)hw_ste_p;
 struct mlx5dr_match_spec *spec = sb->inner ? &value->inner : &value->outer;
 u8 *tag = hw_ste->tag;

 DR_STE_SET_TAG(eth_l3_ipv6_dst, tag, dst_ip_127_96, spec, dst_ip_127_96);
 DR_STE_SET_TAG(eth_l3_ipv6_dst, tag, dst_ip_95_64, spec, dst_ip_95_64);
 DR_STE_SET_TAG(eth_l3_ipv6_dst, tag, dst_ip_63_32, spec, dst_ip_63_32);
 DR_STE_SET_TAG(eth_l3_ipv6_dst, tag, dst_ip_31_0, spec, dst_ip_31_0);

 return 0;
}
