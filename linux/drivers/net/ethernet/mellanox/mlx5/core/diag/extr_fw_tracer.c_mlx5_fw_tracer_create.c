
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_fw_tracer {int work_queue; struct mlx5_core_dev* dev; int handle_traces_work; int read_fw_strings_work; int ownership_change_work; int ready_strings_list; } ;
struct mlx5_core_dev {int dummy; } ;


 int ENOMEM ;
 struct mlx5_fw_tracer* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int MLX5_CAP_MCAM_REG (struct mlx5_core_dev*,int ) ;
 int create_singlethread_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 int kfree (struct mlx5_fw_tracer*) ;
 struct mlx5_fw_tracer* kzalloc (int,int ) ;
 int mlx5_core_dbg (struct mlx5_core_dev*,char*,...) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int) ;
 int mlx5_fw_tracer_allocate_strings_db (struct mlx5_fw_tracer*) ;
 int mlx5_fw_tracer_create_log_buf (struct mlx5_fw_tracer*) ;
 int mlx5_fw_tracer_destroy_log_buf (struct mlx5_fw_tracer*) ;
 int mlx5_fw_tracer_handle_traces ;
 int mlx5_fw_tracer_init_saved_traces_array (struct mlx5_fw_tracer*) ;
 int mlx5_fw_tracer_ownership_change ;
 int mlx5_query_mtrc_caps (struct mlx5_fw_tracer*) ;
 int mlx5_tracer_read_strings_db ;
 int tracer_registers ;

struct mlx5_fw_tracer *mlx5_fw_tracer_create(struct mlx5_core_dev *dev)
{
 struct mlx5_fw_tracer *tracer = ((void*)0);
 int err;

 if (!MLX5_CAP_MCAM_REG(dev, tracer_registers)) {
  mlx5_core_dbg(dev, "FWTracer: Tracer capability not present\n");
  return ((void*)0);
 }

 tracer = kzalloc(sizeof(*tracer), GFP_KERNEL);
 if (!tracer)
  return ERR_PTR(-ENOMEM);

 tracer->work_queue = create_singlethread_workqueue("mlx5_fw_tracer");
 if (!tracer->work_queue) {
  err = -ENOMEM;
  goto free_tracer;
 }

 tracer->dev = dev;

 INIT_LIST_HEAD(&tracer->ready_strings_list);
 INIT_WORK(&tracer->ownership_change_work, mlx5_fw_tracer_ownership_change);
 INIT_WORK(&tracer->read_fw_strings_work, mlx5_tracer_read_strings_db);
 INIT_WORK(&tracer->handle_traces_work, mlx5_fw_tracer_handle_traces);


 err = mlx5_query_mtrc_caps(tracer);
 if (err) {
  mlx5_core_dbg(dev, "FWTracer: Failed to query capabilities %d\n", err);
  goto destroy_workqueue;
 }

 err = mlx5_fw_tracer_create_log_buf(tracer);
 if (err) {
  mlx5_core_warn(dev, "FWTracer: Create log buffer failed %d\n", err);
  goto destroy_workqueue;
 }

 err = mlx5_fw_tracer_allocate_strings_db(tracer);
 if (err) {
  mlx5_core_warn(dev, "FWTracer: Allocate strings database failed %d\n", err);
  goto free_log_buf;
 }

 mlx5_fw_tracer_init_saved_traces_array(tracer);
 mlx5_core_dbg(dev, "FWTracer: Tracer created\n");

 return tracer;

free_log_buf:
 mlx5_fw_tracer_destroy_log_buf(tracer);
destroy_workqueue:
 tracer->dev = ((void*)0);
 destroy_workqueue(tracer->work_queue);
free_tracer:
 kfree(tracer);
 return ERR_PTR(err);
}
