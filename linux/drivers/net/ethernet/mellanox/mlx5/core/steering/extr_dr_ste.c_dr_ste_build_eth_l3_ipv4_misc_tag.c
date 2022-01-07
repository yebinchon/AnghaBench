
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
 int eth_l3_ipv4_misc ;
 int time_to_live ;
 int ttl_hoplimit ;

__attribute__((used)) static int dr_ste_build_eth_l3_ipv4_misc_tag(struct mlx5dr_match_param *value,
          struct mlx5dr_ste_build *sb,
          u8 *hw_ste_p)
{
 struct dr_hw_ste_format *hw_ste = (struct dr_hw_ste_format *)hw_ste_p;
 struct mlx5dr_match_spec *spec = sb->inner ? &value->inner : &value->outer;
 u8 *tag = hw_ste->tag;

 DR_STE_SET_TAG(eth_l3_ipv4_misc, tag, time_to_live, spec, ttl_hoplimit);

 return 0;
}
