
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xvip_pipeline {int stream_count; int num_dmas; int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int xvip_pipeline_start_stop (struct xvip_pipeline*,int) ;

__attribute__((used)) static int xvip_pipeline_set_stream(struct xvip_pipeline *pipe, bool on)
{
 int ret = 0;

 mutex_lock(&pipe->lock);

 if (on) {
  if (pipe->stream_count == pipe->num_dmas - 1) {
   ret = xvip_pipeline_start_stop(pipe, 1);
   if (ret < 0)
    goto done;
  }
  pipe->stream_count++;
 } else {
  if (--pipe->stream_count == 0)
   xvip_pipeline_start_stop(pipe, 0);
 }

done:
 mutex_unlock(&pipe->lock);
 return ret;
}
