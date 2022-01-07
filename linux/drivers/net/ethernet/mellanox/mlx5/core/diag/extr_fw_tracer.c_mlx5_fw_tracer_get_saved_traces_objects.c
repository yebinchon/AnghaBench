
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {size_t saved_traces_index; int lock; struct mlx5_fw_trace_data* straces; } ;
struct mlx5_fw_tracer {TYPE_1__ st_arr; } ;
struct mlx5_fw_trace_data {scalar_t__ timestamp; } ;
struct devlink_fmsg {int dummy; } ;


 int ENOMSG ;
 int SAVED_TRACES_NUM ;
 int devlink_fmsg_arr_pair_nest_end (struct devlink_fmsg*) ;
 int devlink_fmsg_arr_pair_nest_start (struct devlink_fmsg*,char*) ;
 int mlx5_devlink_fmsg_fill_trace (struct devlink_fmsg*,struct mlx5_fw_trace_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int mlx5_fw_tracer_get_saved_traces_objects(struct mlx5_fw_tracer *tracer,
         struct devlink_fmsg *fmsg)
{
 struct mlx5_fw_trace_data *straces = tracer->st_arr.straces;
 u32 index, start_index, end_index;
 u32 saved_traces_index;
 int err;

 if (!straces[0].timestamp)
  return -ENOMSG;

 mutex_lock(&tracer->st_arr.lock);
 saved_traces_index = tracer->st_arr.saved_traces_index;
 if (straces[saved_traces_index].timestamp)
  start_index = saved_traces_index;
 else
  start_index = 0;
 end_index = (saved_traces_index - 1) & (SAVED_TRACES_NUM - 1);

 err = devlink_fmsg_arr_pair_nest_start(fmsg, "dump fw traces");
 if (err)
  goto unlock;
 index = start_index;
 while (index != end_index) {
  err = mlx5_devlink_fmsg_fill_trace(fmsg, &straces[index]);
  if (err)
   goto unlock;

  index = (index + 1) & (SAVED_TRACES_NUM - 1);
 }

 err = devlink_fmsg_arr_pair_nest_end(fmsg);
unlock:
 mutex_unlock(&tracer->st_arr.lock);
 return err;
}
