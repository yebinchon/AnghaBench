
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; int esw_tsar_ix; } ;
struct mlx5_vport {TYPE_1__ qos; int vport; } ;
struct mlx5_eswitch {int dev; } ;


 int SCHEDULING_HIERARCHY_E_SWITCH ;
 int esw_warn (int ,char*,int ,int) ;
 int mlx5_destroy_scheduling_element_cmd (int ,int ,int ) ;

__attribute__((used)) static void esw_vport_disable_qos(struct mlx5_eswitch *esw,
      struct mlx5_vport *vport)
{
 int err;

 if (!vport->qos.enabled)
  return;

 err = mlx5_destroy_scheduling_element_cmd(esw->dev,
        SCHEDULING_HIERARCHY_E_SWITCH,
        vport->qos.esw_tsar_ix);
 if (err)
  esw_warn(esw->dev, "E-Switch destroy TSAR vport element failed (vport=%d,err=%d)\n",
    vport->vport, err);

 vport->qos.enabled = 0;
}
