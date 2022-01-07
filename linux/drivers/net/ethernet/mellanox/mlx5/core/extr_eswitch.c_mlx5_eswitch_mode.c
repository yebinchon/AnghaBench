
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_eswitch {int mode; } ;


 scalar_t__ ESW_ALLOWED (struct mlx5_eswitch*) ;
 int MLX5_ESWITCH_NONE ;

u8 mlx5_eswitch_mode(struct mlx5_eswitch *esw)
{
 return ESW_ALLOWED(esw) ? esw->mode : MLX5_ESWITCH_NONE;
}
