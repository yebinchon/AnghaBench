
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fw_tracer {int work_queue; int read_fw_strings_work; int dev; } ;


 scalar_t__ IS_ERR_OR_NULL (struct mlx5_fw_tracer*) ;
 int cancel_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 int kfree (struct mlx5_fw_tracer*) ;
 int mlx5_core_dbg (int ,char*) ;
 int mlx5_fw_tracer_clean_print_hash (struct mlx5_fw_tracer*) ;
 int mlx5_fw_tracer_clean_ready_list (struct mlx5_fw_tracer*) ;
 int mlx5_fw_tracer_clean_saved_traces_array (struct mlx5_fw_tracer*) ;
 int mlx5_fw_tracer_destroy_log_buf (struct mlx5_fw_tracer*) ;
 int mlx5_fw_tracer_free_strings_db (struct mlx5_fw_tracer*) ;

void mlx5_fw_tracer_destroy(struct mlx5_fw_tracer *tracer)
{
 if (IS_ERR_OR_NULL(tracer))
  return;

 mlx5_core_dbg(tracer->dev, "FWTracer: Destroy\n");

 cancel_work_sync(&tracer->read_fw_strings_work);
 mlx5_fw_tracer_clean_ready_list(tracer);
 mlx5_fw_tracer_clean_print_hash(tracer);
 mlx5_fw_tracer_clean_saved_traces_array(tracer);
 mlx5_fw_tracer_free_strings_db(tracer);
 mlx5_fw_tracer_destroy_log_buf(tracer);
 flush_workqueue(tracer->work_queue);
 destroy_workqueue(tracer->work_queue);
 kfree(tracer);
}
