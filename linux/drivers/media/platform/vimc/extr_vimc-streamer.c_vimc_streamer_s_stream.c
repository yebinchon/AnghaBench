
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vimc_stream {int * kthread; } ;
struct vimc_ent_device {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int * kthread_run (int ,struct vimc_stream*,char*) ;
 int kthread_stop (int *) ;
 int vimc_streamer_pipeline_init (struct vimc_stream*,struct vimc_ent_device*) ;
 int vimc_streamer_pipeline_terminate (struct vimc_stream*) ;
 int vimc_streamer_thread ;

int vimc_streamer_s_stream(struct vimc_stream *stream,
      struct vimc_ent_device *ved,
      int enable)
{
 int ret;

 if (!stream || !ved)
  return -EINVAL;

 if (enable) {
  if (stream->kthread)
   return 0;

  ret = vimc_streamer_pipeline_init(stream, ved);
  if (ret)
   return ret;

  stream->kthread = kthread_run(vimc_streamer_thread, stream,
           "vimc-streamer thread");

  if (IS_ERR(stream->kthread))
   return PTR_ERR(stream->kthread);

 } else {
  if (!stream->kthread)
   return 0;

  ret = kthread_stop(stream->kthread);
  if (ret)
   return ret;

  stream->kthread = ((void*)0);

  vimc_streamer_pipeline_terminate(stream);
 }

 return 0;
}
