
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enabled; int root_tsar_id; } ;
struct mlx5_eswitch {TYPE_1__ qos; int dev; } ;


 int SCHEDULING_HIERARCHY_E_SWITCH ;
 int esw_warn (int ,char*,int) ;
 int mlx5_destroy_scheduling_element_cmd (int ,int ,int ) ;

__attribute__((used)) static void esw_destroy_tsar(struct mlx5_eswitch *esw)
{
 int err;

 if (!esw->qos.enabled)
  return;

 err = mlx5_destroy_scheduling_element_cmd(esw->dev,
        SCHEDULING_HIERARCHY_E_SWITCH,
        esw->qos.root_tsar_id);
 if (err)
  esw_warn(esw->dev, "E-Switch destroy TSAR failed (%d)\n", err);

 esw->qos.enabled = 0;
}
