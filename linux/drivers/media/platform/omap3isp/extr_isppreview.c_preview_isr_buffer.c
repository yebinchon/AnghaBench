
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct isp_prev_device {int output; scalar_t__ input; int state; int video_in; int video_out; TYPE_1__ subdev; } ;
struct isp_pipeline {int state; } ;
struct isp_buffer {int dma; } ;


 int ISP_PIPELINE_IDLE_INPUT ;
 int ISP_PIPELINE_IDLE_OUTPUT ;



 scalar_t__ PREVIEW_INPUT_MEMORY ;
 int PREVIEW_OUTPUT_MEMORY ;
 int isp_pipeline_ready (struct isp_pipeline*) ;
 int omap3isp_pipeline_set_stream (struct isp_pipeline*,int const) ;
 struct isp_buffer* omap3isp_video_buffer_next (int *) ;
 int preview_enable_oneshot (struct isp_prev_device*) ;
 int preview_set_inaddr (struct isp_prev_device*,int ) ;
 int preview_set_outaddr (struct isp_prev_device*,int ) ;
 struct isp_pipeline* to_isp_pipeline (int *) ;

__attribute__((used)) static void preview_isr_buffer(struct isp_prev_device *prev)
{
 struct isp_pipeline *pipe = to_isp_pipeline(&prev->subdev.entity);
 struct isp_buffer *buffer;
 int restart = 0;

 if (prev->output & PREVIEW_OUTPUT_MEMORY) {
  buffer = omap3isp_video_buffer_next(&prev->video_out);
  if (buffer != ((void*)0)) {
   preview_set_outaddr(prev, buffer->dma);
   restart = 1;
  }
  pipe->state |= ISP_PIPELINE_IDLE_OUTPUT;
 }

 if (prev->input == PREVIEW_INPUT_MEMORY) {
  buffer = omap3isp_video_buffer_next(&prev->video_in);
  if (buffer != ((void*)0))
   preview_set_inaddr(prev, buffer->dma);
  pipe->state |= ISP_PIPELINE_IDLE_INPUT;
 }

 switch (prev->state) {
 case 129:
  if (isp_pipeline_ready(pipe))
   omap3isp_pipeline_set_stream(pipe,
      129);
  break;

 case 130:



  if (restart)
   preview_enable_oneshot(prev);
  break;

 case 128:
 default:
  return;
 }
}
