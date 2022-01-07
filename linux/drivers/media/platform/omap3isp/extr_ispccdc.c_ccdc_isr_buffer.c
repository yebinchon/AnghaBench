
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct isp_pipeline {int state; } ;
struct isp_device {int crashed; int dev; } ;
struct TYPE_4__ {int dmaqueue; } ;
struct TYPE_3__ {int entity; } ;
struct isp_ccdc_device {scalar_t__ state; TYPE_2__ video_out; TYPE_1__ subdev; scalar_t__ underrun; } ;
struct isp_buffer {int dma; } ;


 int ISP_PIPELINE_IDLE_OUTPUT ;
 scalar_t__ ISP_PIPELINE_STREAM_CONTINUOUS ;
 scalar_t__ ISP_PIPELINE_STREAM_SINGLESHOT ;
 int ccdc_has_all_fields (struct isp_ccdc_device*) ;
 scalar_t__ ccdc_sbl_wait_idle (struct isp_ccdc_device*,int) ;
 int ccdc_set_outaddr (struct isp_ccdc_device*,int ) ;
 int dev_info (int ,char*) ;
 scalar_t__ isp_pipeline_ready (struct isp_pipeline*) ;
 scalar_t__ list_empty (int *) ;
 int media_entity_enum_set (int *,int *) ;
 int omap3isp_pipeline_cancel_stream (struct isp_pipeline*) ;
 int omap3isp_pipeline_set_stream (struct isp_pipeline*,scalar_t__) ;
 struct isp_buffer* omap3isp_video_buffer_next (TYPE_2__*) ;
 struct isp_device* to_isp_device (struct isp_ccdc_device*) ;
 struct isp_pipeline* to_isp_pipeline (int *) ;

__attribute__((used)) static int ccdc_isr_buffer(struct isp_ccdc_device *ccdc)
{
 struct isp_pipeline *pipe = to_isp_pipeline(&ccdc->subdev.entity);
 struct isp_device *isp = to_isp_device(ccdc);
 struct isp_buffer *buffer;







 if (list_empty(&ccdc->video_out.dmaqueue))
  return 0;





 if (ccdc->state == ISP_PIPELINE_STREAM_CONTINUOUS && ccdc->underrun) {
  ccdc->underrun = 0;
  return 1;
 }


 if (ccdc_sbl_wait_idle(ccdc, 1000)) {
  dev_info(isp->dev, "CCDC won't become idle!\n");
  media_entity_enum_set(&isp->crashed, &ccdc->subdev.entity);
  omap3isp_pipeline_cancel_stream(pipe);
  return 0;
 }

 if (!ccdc_has_all_fields(ccdc))
  return 1;

 buffer = omap3isp_video_buffer_next(&ccdc->video_out);
 if (buffer != ((void*)0))
  ccdc_set_outaddr(ccdc, buffer->dma);

 pipe->state |= ISP_PIPELINE_IDLE_OUTPUT;

 if (ccdc->state == ISP_PIPELINE_STREAM_SINGLESHOT &&
     isp_pipeline_ready(pipe))
  omap3isp_pipeline_set_stream(pipe,
     ISP_PIPELINE_STREAM_SINGLESHOT);

 return buffer != ((void*)0);
}
