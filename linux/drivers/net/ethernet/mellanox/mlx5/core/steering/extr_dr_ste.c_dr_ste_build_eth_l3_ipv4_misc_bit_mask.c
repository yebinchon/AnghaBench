
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5dr_match_spec {int dummy; } ;
struct mlx5dr_match_param {struct mlx5dr_match_spec outer; struct mlx5dr_match_spec inner; } ;


 int DR_STE_SET_MASK_V (int ,int *,int ,struct mlx5dr_match_spec*,int ) ;
 int eth_l3_ipv4_misc ;
 int time_to_live ;
 int ttl_hoplimit ;

__attribute__((used)) static void dr_ste_build_eth_l3_ipv4_misc_bit_mask(struct mlx5dr_match_param *value,
         bool inner, u8 *bit_mask)
{
 struct mlx5dr_match_spec *mask = inner ? &value->inner : &value->outer;

 DR_STE_SET_MASK_V(eth_l3_ipv4_misc, bit_mask, time_to_live, mask, ttl_hoplimit);
}
