
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct mlx5_vport {scalar_t__ vport; int enabled; scalar_t__ enabled_events; } ;
struct mlx5_eswitch {scalar_t__ manager_vport; scalar_t__ mode; int state_lock; int enabled_vports; int dev; int work_queue; } ;


 scalar_t__ MLX5_ESWITCH_LEGACY ;
 int MLX5_VPORT_ADMIN_STATE_DOWN ;
 int MLX5_VPORT_STATE_OP_MOD_ESW_VPORT ;
 int arm_vport_context_events_cmd (int ,scalar_t__,int ) ;
 int esw_debug (int ,char*,scalar_t__) ;
 int esw_vport_change_handle_locked (struct mlx5_vport*) ;
 int esw_vport_destroy_drop_counters (struct mlx5_vport*) ;
 int esw_vport_disable_egress_acl (struct mlx5_eswitch*,struct mlx5_vport*) ;
 int esw_vport_disable_ingress_acl (struct mlx5_eswitch*,struct mlx5_vport*) ;
 int esw_vport_disable_qos (struct mlx5_eswitch*,struct mlx5_vport*) ;
 int flush_workqueue (int ) ;
 int mlx5_modify_vport_admin_state (int ,int ,scalar_t__,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void esw_disable_vport(struct mlx5_eswitch *esw,
         struct mlx5_vport *vport)
{
 u16 vport_num = vport->vport;

 if (!vport->enabled)
  return;

 esw_debug(esw->dev, "Disabling vport(%d)\n", vport_num);

 vport->enabled = 0;


 flush_workqueue(esw->work_queue);

 arm_vport_context_events_cmd(esw->dev, vport->vport, 0);
 mutex_lock(&esw->state_lock);




 esw_vport_change_handle_locked(vport);
 vport->enabled_events = 0;
 esw_vport_disable_qos(esw, vport);
 if (esw->manager_vport != vport_num &&
     esw->mode == MLX5_ESWITCH_LEGACY) {
  mlx5_modify_vport_admin_state(esw->dev,
           MLX5_VPORT_STATE_OP_MOD_ESW_VPORT,
           vport_num, 1,
           MLX5_VPORT_ADMIN_STATE_DOWN);
  esw_vport_disable_egress_acl(esw, vport);
  esw_vport_disable_ingress_acl(esw, vport);
  esw_vport_destroy_drop_counters(vport);
 }
 esw->enabled_vports--;
 mutex_unlock(&esw->state_lock);
}
