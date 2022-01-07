
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_4__ {int trusted; int max_rate; } ;
struct TYPE_3__ {int bw_share; } ;
struct mlx5_vport {scalar_t__ vport; int enabled; int enabled_events; TYPE_2__ info; TYPE_1__ qos; } ;
struct mlx5_eswitch {scalar_t__ mode; scalar_t__ manager_vport; int state_lock; int dev; int enabled_vports; } ;
typedef enum mlx5_eswitch_vport_event { ____Placeholder_mlx5_eswitch_vport_event } mlx5_eswitch_vport_event ;


 scalar_t__ MLX5_ESWITCH_LEGACY ;
 int WARN_ON (int) ;
 int esw_apply_vport_conf (struct mlx5_eswitch*,struct mlx5_vport*) ;
 int esw_debug (int ,char*,scalar_t__) ;
 int esw_vport_change_handle_locked (struct mlx5_vport*) ;
 int esw_vport_create_drop_counters (struct mlx5_vport*) ;
 scalar_t__ esw_vport_enable_qos (struct mlx5_eswitch*,struct mlx5_vport*,int ,int ) ;
 int esw_warn (int ,char*,scalar_t__) ;
 scalar_t__ mlx5_core_is_ecpf (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void esw_enable_vport(struct mlx5_eswitch *esw, struct mlx5_vport *vport,
        enum mlx5_eswitch_vport_event enabled_events)
{
 u16 vport_num = vport->vport;

 mutex_lock(&esw->state_lock);
 WARN_ON(vport->enabled);

 esw_debug(esw->dev, "Enabling VPORT(%d)\n", vport_num);


 if (vport_num && esw->mode == MLX5_ESWITCH_LEGACY)
  esw_vport_create_drop_counters(vport);


 esw_apply_vport_conf(esw, vport);


 if (esw_vport_enable_qos(esw, vport, vport->info.max_rate,
     vport->qos.bw_share))
  esw_warn(esw->dev, "Failed to attach vport %d to eswitch rate limiter", vport_num);


 vport->enabled_events = enabled_events;
 vport->enabled = 1;




 if (esw->manager_vport == vport_num ||
     (!vport_num && mlx5_core_is_ecpf(esw->dev)))
  vport->info.trusted = 1;

 esw_vport_change_handle_locked(vport);

 esw->enabled_vports++;
 esw_debug(esw->dev, "Enabled VPORT(%d)\n", vport_num);
 mutex_unlock(&esw->state_lock);
}
