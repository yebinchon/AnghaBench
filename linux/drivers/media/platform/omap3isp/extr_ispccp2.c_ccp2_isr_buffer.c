
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isp_pipeline {int state; } ;
struct TYPE_2__ {int entity; } ;
struct isp_ccp2_device {scalar_t__ state; int video_in; TYPE_1__ subdev; } ;
struct isp_buffer {int dma; } ;


 int ISP_PIPELINE_IDLE_INPUT ;
 scalar_t__ ISP_PIPELINE_STREAM_SINGLESHOT ;
 int ccp2_set_inaddr (struct isp_ccp2_device*,int ) ;
 scalar_t__ isp_pipeline_ready (struct isp_pipeline*) ;
 int omap3isp_pipeline_set_stream (struct isp_pipeline*,scalar_t__) ;
 struct isp_buffer* omap3isp_video_buffer_next (int *) ;
 struct isp_pipeline* to_isp_pipeline (int *) ;

__attribute__((used)) static void ccp2_isr_buffer(struct isp_ccp2_device *ccp2)
{
 struct isp_pipeline *pipe = to_isp_pipeline(&ccp2->subdev.entity);
 struct isp_buffer *buffer;

 buffer = omap3isp_video_buffer_next(&ccp2->video_in);
 if (buffer != ((void*)0))
  ccp2_set_inaddr(ccp2, buffer->dma);

 pipe->state |= ISP_PIPELINE_IDLE_INPUT;

 if (ccp2->state == ISP_PIPELINE_STREAM_SINGLESHOT) {
  if (isp_pipeline_ready(pipe))
   omap3isp_pipeline_set_stream(pipe,
      ISP_PIPELINE_STREAM_SINGLESHOT);
 }
}
