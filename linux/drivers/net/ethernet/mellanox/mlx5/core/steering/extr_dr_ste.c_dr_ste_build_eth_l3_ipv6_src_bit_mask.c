
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_match_spec {int dummy; } ;
struct mlx5dr_match_param {struct mlx5dr_match_spec outer; struct mlx5dr_match_spec inner; } ;


 int DR_STE_SET_MASK_V (int ,int *,int ,struct mlx5dr_match_spec*,int ) ;
 int eth_l3_ipv6_src ;
 int src_ip_127_96 ;
 int src_ip_31_0 ;
 int src_ip_63_32 ;
 int src_ip_95_64 ;

__attribute__((used)) static void dr_ste_build_eth_l3_ipv6_src_bit_mask(struct mlx5dr_match_param *value,
        bool inner, u8 *bit_mask)
{
 struct mlx5dr_match_spec *mask = inner ? &value->inner : &value->outer;

 DR_STE_SET_MASK_V(eth_l3_ipv6_src, bit_mask, src_ip_127_96, mask, src_ip_127_96);
 DR_STE_SET_MASK_V(eth_l3_ipv6_src, bit_mask, src_ip_95_64, mask, src_ip_95_64);
 DR_STE_SET_MASK_V(eth_l3_ipv6_src, bit_mask, src_ip_63_32, mask, src_ip_63_32);
 DR_STE_SET_MASK_V(eth_l3_ipv6_src, bit_mask, src_ip_31_0, mask, src_ip_31_0);
}
