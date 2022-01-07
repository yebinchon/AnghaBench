
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int trusted; } ;
struct mlx5_vport {int enabled; TYPE_1__ info; int vport; } ;
struct mlx5_eswitch {int dev; } ;


 int esw_apply_vport_rx_mode (struct mlx5_eswitch*,struct mlx5_vport*,int,int) ;
 int esw_debug (int ,char*,int ,int,int) ;
 int mlx5_query_nic_vport_promisc (int ,int ,int*,int*,int*) ;

__attribute__((used)) static void esw_update_vport_rx_mode(struct mlx5_eswitch *esw,
         struct mlx5_vport *vport)
{
 int promisc_all = 0;
 int promisc_uc = 0;
 int promisc_mc = 0;
 int err;

 err = mlx5_query_nic_vport_promisc(esw->dev,
        vport->vport,
        &promisc_uc,
        &promisc_mc,
        &promisc_all);
 if (err)
  return;
 esw_debug(esw->dev, "vport[%d] context update rx mode promisc_all=%d, all_multi=%d\n",
    vport->vport, promisc_all, promisc_mc);

 if (!vport->info.trusted || !vport->enabled) {
  promisc_uc = 0;
  promisc_mc = 0;
  promisc_all = 0;
 }

 esw_apply_vport_rx_mode(esw, vport, promisc_all,
    (promisc_all || promisc_mc));
}
