
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lock; } ;
struct TYPE_7__ {int encap_tbl_lock; TYPE_1__ mod_hdr; } ;
struct mlx5_eswitch {struct mlx5_eswitch* vports; TYPE_2__ offloads; int work_queue; TYPE_4__* dev; } ;
struct TYPE_8__ {int * eswitch; } ;
struct TYPE_9__ {TYPE_3__ priv; } ;


 int MLX5_VPORT_MANAGER (TYPE_4__*) ;
 int destroy_workqueue (int ) ;
 int esw_info (TYPE_4__*,char*) ;
 int esw_offloads_cleanup_reps (struct mlx5_eswitch*) ;
 int kfree (struct mlx5_eswitch*) ;
 int mutex_destroy (int *) ;

void mlx5_eswitch_cleanup(struct mlx5_eswitch *esw)
{
 if (!esw || !MLX5_VPORT_MANAGER(esw->dev))
  return;

 esw_info(esw->dev, "cleanup\n");

 esw->dev->priv.eswitch = ((void*)0);
 destroy_workqueue(esw->work_queue);
 esw_offloads_cleanup_reps(esw);
 mutex_destroy(&esw->offloads.mod_hdr.lock);
 mutex_destroy(&esw->offloads.encap_tbl_lock);
 kfree(esw->vports);
 kfree(esw);
}
