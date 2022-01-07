
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_vfs; } ;
struct mlx5_eswitch {int mode; int dev; int enabled_vports; TYPE_1__ esw_funcs; } ;


 int EOPNOTSUPP ;
 int ESW_ALLOWED (struct mlx5_eswitch*) ;
 int MLX5_CAP_ESW_EGRESS_ACL (int ,int ) ;
 int MLX5_CAP_ESW_FLOWTABLE_FDB (int ,int ) ;
 int MLX5_CAP_ESW_INGRESS_ACL (int ,int ) ;
 int MLX5_ESWITCH_LEGACY ;
 int MLX5_ESWITCH_NONE ;
 int MLX5_ESWITCH_OFFLOADS ;
 int MLX5_INTERFACE_PROTOCOL_ETH ;
 int MLX5_INTERFACE_PROTOCOL_IB ;
 int esw_create_tsar (struct mlx5_eswitch*) ;
 int esw_info (int ,char*,char*,int ,int ) ;
 int esw_legacy_enable (struct mlx5_eswitch*) ;
 int esw_offloads_enable (struct mlx5_eswitch*) ;
 int esw_warn (int ,char*) ;
 int ft_support ;
 int mlx5_eswitch_event_handlers_register (struct mlx5_eswitch*) ;
 int mlx5_lag_update (int ) ;
 int mlx5_reload_interface (int ,int ) ;

int mlx5_eswitch_enable(struct mlx5_eswitch *esw, int mode)
{
 int err;

 if (!ESW_ALLOWED(esw) ||
     !MLX5_CAP_ESW_FLOWTABLE_FDB(esw->dev, ft_support)) {
  esw_warn(esw->dev, "FDB is not supported, aborting ...\n");
  return -EOPNOTSUPP;
 }

 if (!MLX5_CAP_ESW_INGRESS_ACL(esw->dev, ft_support))
  esw_warn(esw->dev, "ingress ACL is not supported by FW\n");

 if (!MLX5_CAP_ESW_EGRESS_ACL(esw->dev, ft_support))
  esw_warn(esw->dev, "engress ACL is not supported by FW\n");

 esw_create_tsar(esw);

 esw->mode = mode;

 mlx5_lag_update(esw->dev);

 if (mode == MLX5_ESWITCH_LEGACY) {
  err = esw_legacy_enable(esw);
 } else {
  mlx5_reload_interface(esw->dev, MLX5_INTERFACE_PROTOCOL_ETH);
  mlx5_reload_interface(esw->dev, MLX5_INTERFACE_PROTOCOL_IB);
  err = esw_offloads_enable(esw);
 }

 if (err)
  goto abort;

 mlx5_eswitch_event_handlers_register(esw);

 esw_info(esw->dev, "Enable: mode(%s), nvfs(%d), active vports(%d)\n",
   mode == MLX5_ESWITCH_LEGACY ? "LEGACY" : "OFFLOADS",
   esw->esw_funcs.num_vfs, esw->enabled_vports);

 return 0;

abort:
 esw->mode = MLX5_ESWITCH_NONE;

 if (mode == MLX5_ESWITCH_OFFLOADS) {
  mlx5_reload_interface(esw->dev, MLX5_INTERFACE_PROTOCOL_IB);
  mlx5_reload_interface(esw->dev, MLX5_INTERFACE_PROTOCOL_ETH);
 }

 return err;
}
