
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5e_profile {int dummy; } ;


 struct mlx5e_profile const mlx5i_pkey_nic_profile ;

const struct mlx5e_profile *mlx5i_pkey_get_profile(void)
{
 return &mlx5i_pkey_nic_profile;
}
