
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int encap; } ;
struct mlx5_eswitch {TYPE_1__ offloads; int dev; } ;


 int DEVLINK_ESWITCH_ENCAP_MODE_NONE ;
 int esw_offloads_devcom_cleanup (struct mlx5_eswitch*) ;
 int esw_offloads_steering_cleanup (struct mlx5_eswitch*) ;
 int esw_offloads_unload_all_reps (struct mlx5_eswitch*) ;
 int esw_set_passing_vport_metadata (struct mlx5_eswitch*,int) ;
 int mlx5_eswitch_disable_pf_vf_vports (struct mlx5_eswitch*) ;
 int mlx5_rdma_disable_roce (int ) ;

void esw_offloads_disable(struct mlx5_eswitch *esw)
{
 esw_offloads_devcom_cleanup(esw);
 esw_offloads_unload_all_reps(esw);
 mlx5_eswitch_disable_pf_vf_vports(esw);
 esw_set_passing_vport_metadata(esw, 0);
 esw_offloads_steering_cleanup(esw);
 mlx5_rdma_disable_roce(esw->dev);
 esw->offloads.encap = DEVLINK_ESWITCH_ENCAP_MODE_NONE;
}
