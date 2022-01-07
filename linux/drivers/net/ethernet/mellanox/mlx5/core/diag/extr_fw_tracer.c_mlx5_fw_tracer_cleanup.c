
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pdn; int mkey; } ;
struct mlx5_fw_tracer {TYPE_1__ buff; int dev; scalar_t__ owner; int handle_traces_work; int ownership_change_work; int nb; } ;


 scalar_t__ IS_ERR_OR_NULL (struct mlx5_fw_tracer*) ;
 int cancel_work_sync (int *) ;
 int mlx5_core_dbg (int ,char*,scalar_t__) ;
 int mlx5_core_dealloc_pd (int ,int ) ;
 int mlx5_core_destroy_mkey (int ,int *) ;
 int mlx5_eq_notifier_unregister (int ,int *) ;
 int mlx5_fw_tracer_ownership_release (struct mlx5_fw_tracer*) ;

void mlx5_fw_tracer_cleanup(struct mlx5_fw_tracer *tracer)
{
 if (IS_ERR_OR_NULL(tracer))
  return;

 mlx5_core_dbg(tracer->dev, "FWTracer: Cleanup, is owner ? (%d)\n",
        tracer->owner);
 mlx5_eq_notifier_unregister(tracer->dev, &tracer->nb);
 cancel_work_sync(&tracer->ownership_change_work);
 cancel_work_sync(&tracer->handle_traces_work);

 if (tracer->owner)
  mlx5_fw_tracer_ownership_release(tracer);

 mlx5_core_destroy_mkey(tracer->dev, &tracer->buff.mkey);
 mlx5_core_dealloc_pd(tracer->dev, tracer->buff.pdn);
}
