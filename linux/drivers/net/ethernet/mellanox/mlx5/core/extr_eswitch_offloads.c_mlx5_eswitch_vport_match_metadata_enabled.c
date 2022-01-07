
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_eswitch {int flags; } ;


 int MLX5_ESWITCH_VPORT_MATCH_METADATA ;

bool mlx5_eswitch_vport_match_metadata_enabled(const struct mlx5_eswitch *esw)
{
 return !!(esw->flags & MLX5_ESWITCH_VPORT_MATCH_METADATA);
}
