
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int termtbl_mutex; int encap; } ;
struct mlx5_eswitch {int dev; TYPE_1__ offloads; } ;


 int DEVLINK_ESWITCH_ENCAP_MODE_BASIC ;
 int DEVLINK_ESWITCH_ENCAP_MODE_NONE ;
 scalar_t__ MLX5_CAP_ESW_FLOWTABLE_FDB (int ,int ) ;
 int MLX5_VPORT_UC_ADDR_CHANGE ;
 int decap ;
 int esw_offloads_devcom_init (struct mlx5_eswitch*) ;
 int esw_offloads_load_all_reps (struct mlx5_eswitch*) ;
 int esw_offloads_steering_cleanup (struct mlx5_eswitch*) ;
 int esw_offloads_steering_init (struct mlx5_eswitch*) ;
 int esw_set_passing_vport_metadata (struct mlx5_eswitch*,int) ;
 int mlx5_eswitch_disable_pf_vf_vports (struct mlx5_eswitch*) ;
 int mlx5_eswitch_enable_pf_vf_vports (struct mlx5_eswitch*,int ) ;
 int mlx5_rdma_disable_roce (int ) ;
 int mlx5_rdma_enable_roce (int ) ;
 int mutex_init (int *) ;
 int reformat ;

int esw_offloads_enable(struct mlx5_eswitch *esw)
{
 int err;

 if (MLX5_CAP_ESW_FLOWTABLE_FDB(esw->dev, reformat) &&
     MLX5_CAP_ESW_FLOWTABLE_FDB(esw->dev, decap))
  esw->offloads.encap = DEVLINK_ESWITCH_ENCAP_MODE_BASIC;
 else
  esw->offloads.encap = DEVLINK_ESWITCH_ENCAP_MODE_NONE;

 mlx5_rdma_enable_roce(esw->dev);
 err = esw_offloads_steering_init(esw);
 if (err)
  goto err_steering_init;

 err = esw_set_passing_vport_metadata(esw, 1);
 if (err)
  goto err_vport_metadata;

 mlx5_eswitch_enable_pf_vf_vports(esw, MLX5_VPORT_UC_ADDR_CHANGE);

 err = esw_offloads_load_all_reps(esw);
 if (err)
  goto err_reps;

 esw_offloads_devcom_init(esw);
 mutex_init(&esw->offloads.termtbl_mutex);

 return 0;

err_reps:
 mlx5_eswitch_disable_pf_vf_vports(esw);
 esw_set_passing_vport_metadata(esw, 0);
err_vport_metadata:
 esw_offloads_steering_cleanup(esw);
err_steering_init:
 mlx5_rdma_disable_roce(esw->dev);
 return err;
}
