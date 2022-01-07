
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_match_misc3 {scalar_t__ outer_vxlan_gpe_flags; scalar_t__ outer_vxlan_gpe_next_protocol; scalar_t__ outer_vxlan_gpe_vni; } ;



__attribute__((used)) static bool dr_mask_is_flex_parser_tnl_set(struct mlx5dr_match_misc3 *misc3)
{
 return (misc3->outer_vxlan_gpe_vni ||
  misc3->outer_vxlan_gpe_next_protocol ||
  misc3->outer_vxlan_gpe_flags);
}
