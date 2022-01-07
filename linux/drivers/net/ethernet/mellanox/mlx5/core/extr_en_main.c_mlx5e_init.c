
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mlx5_register_interface (int *) ;
 int mlx5e_build_ptys2ethtool_map () ;
 int mlx5e_interface ;
 int mlx5e_ipsec_build_inverse_table () ;

void mlx5e_init(void)
{
 mlx5e_ipsec_build_inverse_table();
 mlx5e_build_ptys2ethtool_map();
 mlx5_register_interface(&mlx5e_interface);
}
