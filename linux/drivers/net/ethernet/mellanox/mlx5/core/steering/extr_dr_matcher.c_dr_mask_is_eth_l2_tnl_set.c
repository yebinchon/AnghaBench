
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5dr_match_misc {int vxlan_vni; } ;



__attribute__((used)) static bool dr_mask_is_eth_l2_tnl_set(struct mlx5dr_match_misc *misc)
{
 return misc->vxlan_vni;
}
