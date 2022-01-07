
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;






 int EINVAL ;
 int MLX5_INLINE_MODE_IP ;
 int MLX5_INLINE_MODE_L2 ;
 int MLX5_INLINE_MODE_NONE ;
 int MLX5_INLINE_MODE_TCP_UDP ;

__attribute__((used)) static int esw_inline_mode_from_devlink(u8 mode, u8 *mlx5_mode)
{
 switch (mode) {
 case 129:
  *mlx5_mode = MLX5_INLINE_MODE_NONE;
  break;
 case 131:
  *mlx5_mode = MLX5_INLINE_MODE_L2;
  break;
 case 130:
  *mlx5_mode = MLX5_INLINE_MODE_IP;
  break;
 case 128:
  *mlx5_mode = MLX5_INLINE_MODE_TCP_UDP;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
