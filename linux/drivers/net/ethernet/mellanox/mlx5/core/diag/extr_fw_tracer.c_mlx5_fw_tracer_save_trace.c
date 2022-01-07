
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_2__ {size_t saved_traces_index; int lock; struct mlx5_fw_trace_data* straces; } ;
struct mlx5_fw_tracer {TYPE_1__ st_arr; } ;
struct mlx5_fw_trace_data {int lost; int msg; int event_id; int timestamp; } ;


 int SAVED_TRACES_NUM ;
 int TRACE_STR_MSG ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strscpy_pad (int ,char*,int ) ;

__attribute__((used)) static void mlx5_fw_tracer_save_trace(struct mlx5_fw_tracer *tracer,
          u64 timestamp, bool lost,
          u8 event_id, char *msg)
{
 struct mlx5_fw_trace_data *trace_data;

 mutex_lock(&tracer->st_arr.lock);
 trace_data = &tracer->st_arr.straces[tracer->st_arr.saved_traces_index];
 trace_data->timestamp = timestamp;
 trace_data->lost = lost;
 trace_data->event_id = event_id;
 strscpy_pad(trace_data->msg, msg, TRACE_STR_MSG);

 tracer->st_arr.saved_traces_index =
  (tracer->st_arr.saved_traces_index + 1) & (SAVED_TRACES_NUM - 1);
 mutex_unlock(&tracer->st_arr.lock);
}
