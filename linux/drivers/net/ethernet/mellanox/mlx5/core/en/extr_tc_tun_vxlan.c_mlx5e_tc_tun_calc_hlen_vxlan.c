
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_encap_entry {int dummy; } ;


 int VXLAN_HLEN ;

__attribute__((used)) static int mlx5e_tc_tun_calc_hlen_vxlan(struct mlx5e_encap_entry *e)
{
 return VXLAN_HLEN;
}
