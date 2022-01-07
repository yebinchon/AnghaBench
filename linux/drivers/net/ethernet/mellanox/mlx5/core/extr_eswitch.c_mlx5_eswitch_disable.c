
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_vfs; } ;
struct mlx5_eswitch {scalar_t__ mode; int dev; int enabled_vports; TYPE_1__ esw_funcs; } ;


 int ESW_ALLOWED (struct mlx5_eswitch*) ;
 scalar_t__ MLX5_ESWITCH_LEGACY ;
 scalar_t__ MLX5_ESWITCH_NONE ;
 int MLX5_ESWITCH_OFFLOADS ;
 int MLX5_INTERFACE_PROTOCOL_ETH ;
 int MLX5_INTERFACE_PROTOCOL_IB ;
 int esw_destroy_tsar (struct mlx5_eswitch*) ;
 int esw_info (int ,char*,char*,int ,int ) ;
 int esw_legacy_disable (struct mlx5_eswitch*) ;
 int esw_offloads_disable (struct mlx5_eswitch*) ;
 int mlx5_eswitch_event_handlers_unregister (struct mlx5_eswitch*) ;
 int mlx5_lag_update (int ) ;
 int mlx5_reload_interface (int ,int ) ;

void mlx5_eswitch_disable(struct mlx5_eswitch *esw)
{
 int old_mode;

 if (!ESW_ALLOWED(esw) || esw->mode == MLX5_ESWITCH_NONE)
  return;

 esw_info(esw->dev, "Disable: mode(%s), nvfs(%d), active vports(%d)\n",
   esw->mode == MLX5_ESWITCH_LEGACY ? "LEGACY" : "OFFLOADS",
   esw->esw_funcs.num_vfs, esw->enabled_vports);

 mlx5_eswitch_event_handlers_unregister(esw);

 if (esw->mode == MLX5_ESWITCH_LEGACY)
  esw_legacy_disable(esw);
 else if (esw->mode == MLX5_ESWITCH_OFFLOADS)
  esw_offloads_disable(esw);

 esw_destroy_tsar(esw);

 old_mode = esw->mode;
 esw->mode = MLX5_ESWITCH_NONE;

 mlx5_lag_update(esw->dev);

 if (old_mode == MLX5_ESWITCH_OFFLOADS) {
  mlx5_reload_interface(esw->dev, MLX5_INTERFACE_PROTOCOL_IB);
  mlx5_reload_interface(esw->dev, MLX5_INTERFACE_PROTOCOL_ETH);
 }
}
