
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int dummy; } ;
struct isp_csi2_device {int video_out; struct isp_device* isp; } ;
struct isp_buffer {int dma; } ;


 int csi2_ctx_enable (struct isp_device*,struct isp_csi2_device*,int ,int) ;
 int csi2_set_outaddr (struct isp_csi2_device*,int ) ;
 struct isp_buffer* omap3isp_video_buffer_next (int *) ;

__attribute__((used)) static void csi2_isr_buffer(struct isp_csi2_device *csi2)
{
 struct isp_device *isp = csi2->isp;
 struct isp_buffer *buffer;

 csi2_ctx_enable(isp, csi2, 0, 0);

 buffer = omap3isp_video_buffer_next(&csi2->video_out);





 if (buffer == ((void*)0))
  return;

 csi2_set_outaddr(csi2, buffer->dma);
 csi2_ctx_enable(isp, csi2, 0, 1);
}
