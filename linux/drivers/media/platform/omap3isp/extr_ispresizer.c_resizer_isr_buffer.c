
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct isp_res_device {scalar_t__ state; scalar_t__ input; int video_in; int video_out; TYPE_1__ subdev; } ;
struct isp_pipeline {int state; } ;
struct isp_buffer {int dma; } ;


 int ISP_PIPELINE_IDLE_INPUT ;
 int ISP_PIPELINE_IDLE_OUTPUT ;
 scalar_t__ ISP_PIPELINE_STREAM_SINGLESHOT ;
 scalar_t__ ISP_PIPELINE_STREAM_STOPPED ;
 scalar_t__ RESIZER_INPUT_MEMORY ;
 scalar_t__ isp_pipeline_ready (struct isp_pipeline*) ;
 int omap3isp_pipeline_set_stream (struct isp_pipeline*,scalar_t__) ;
 struct isp_buffer* omap3isp_video_buffer_next (int *) ;
 int resizer_enable_oneshot (struct isp_res_device*) ;
 int resizer_set_inaddr (struct isp_res_device*,int ) ;
 int resizer_set_outaddr (struct isp_res_device*,int ) ;
 struct isp_pipeline* to_isp_pipeline (int *) ;

__attribute__((used)) static void resizer_isr_buffer(struct isp_res_device *res)
{
 struct isp_pipeline *pipe = to_isp_pipeline(&res->subdev.entity);
 struct isp_buffer *buffer;
 int restart = 0;

 if (res->state == ISP_PIPELINE_STREAM_STOPPED)
  return;




 buffer = omap3isp_video_buffer_next(&res->video_out);
 if (buffer != ((void*)0)) {
  resizer_set_outaddr(res, buffer->dma);
  restart = 1;
 }

 pipe->state |= ISP_PIPELINE_IDLE_OUTPUT;

 if (res->input == RESIZER_INPUT_MEMORY) {
  buffer = omap3isp_video_buffer_next(&res->video_in);
  if (buffer != ((void*)0))
   resizer_set_inaddr(res, buffer->dma);
  pipe->state |= ISP_PIPELINE_IDLE_INPUT;
 }

 if (res->state == ISP_PIPELINE_STREAM_SINGLESHOT) {
  if (isp_pipeline_ready(pipe))
   omap3isp_pipeline_set_stream(pipe,
      ISP_PIPELINE_STREAM_SINGLESHOT);
 } else {



  if (restart)
   resizer_enable_oneshot(res);
 }
}
