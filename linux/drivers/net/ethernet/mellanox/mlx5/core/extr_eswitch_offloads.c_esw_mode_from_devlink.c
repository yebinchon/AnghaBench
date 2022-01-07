
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;




 int EINVAL ;
 int MLX5_ESWITCH_LEGACY ;
 int MLX5_ESWITCH_OFFLOADS ;

__attribute__((used)) static int esw_mode_from_devlink(u16 mode, u16 *mlx5_mode)
{
 switch (mode) {
 case 129:
  *mlx5_mode = MLX5_ESWITCH_LEGACY;
  break;
 case 128:
  *mlx5_mode = MLX5_ESWITCH_OFFLOADS;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
