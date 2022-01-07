
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
 int dmac_15_0 ;
 int dmac_47_16 ;
 int dr_ste_build_eth_l2_src_or_dst_tag (struct mlx5dr_match_param*,scalar_t__,int *) ;
 int eth_l2_dst ;

__attribute__((used)) static int dr_ste_build_eth_l2_dst_tag(struct mlx5dr_match_param *value,
           struct mlx5dr_ste_build *sb,
           u8 *hw_ste_p)
{
 struct dr_hw_ste_format *hw_ste = (struct dr_hw_ste_format *)hw_ste_p;
 struct mlx5dr_match_spec *spec = sb->inner ? &value->inner : &value->outer;
 u8 *tag = hw_ste->tag;

 DR_STE_SET_TAG(eth_l2_dst, tag, dmac_47_16, spec, dmac_47_16);
 DR_STE_SET_TAG(eth_l2_dst, tag, dmac_15_0, spec, dmac_15_0);

 return dr_ste_build_eth_l2_src_or_dst_tag(value, sb->inner, hw_ste_p);
}
