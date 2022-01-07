
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;


 int MLX5E_PROT_MASK (int) ;
 int mlx5e_port_get_speed_arr (struct mlx5_core_dev*,int const**,int*,int) ;

u32 mlx5e_port_speed2linkmodes(struct mlx5_core_dev *mdev, u32 speed,
          bool force_legacy)
{
 u32 link_modes = 0;
 const u32 *table;
 u32 max_size;
 int i;

 mlx5e_port_get_speed_arr(mdev, &table, &max_size, force_legacy);
 for (i = 0; i < max_size; ++i) {
  if (table[i] == speed)
   link_modes |= MLX5E_PROT_MASK(i);
 }
 return link_modes;
}
