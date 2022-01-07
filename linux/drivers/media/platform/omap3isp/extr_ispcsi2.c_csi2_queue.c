
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isp_video {struct isp_device* isp; } ;
struct TYPE_2__ {int dmaqueue_flags; } ;
struct isp_csi2_device {TYPE_1__ video_out; } ;
struct isp_device {struct isp_csi2_device isp_csi2a; } ;
struct isp_buffer {int dma; } ;


 int ISP_VIDEO_DMAQUEUE_UNDERRUN ;
 int csi2_ctx_enable (struct isp_device*,struct isp_csi2_device*,int ,int) ;
 int csi2_if_enable (struct isp_device*,struct isp_csi2_device*,int) ;
 int csi2_set_outaddr (struct isp_csi2_device*,int ) ;
 int isp_video_dmaqueue_flags_clr (TYPE_1__*) ;

__attribute__((used)) static int csi2_queue(struct isp_video *video, struct isp_buffer *buffer)
{
 struct isp_device *isp = video->isp;
 struct isp_csi2_device *csi2 = &isp->isp_csi2a;

 csi2_set_outaddr(csi2, buffer->dma);







 if (csi2->video_out.dmaqueue_flags & ISP_VIDEO_DMAQUEUE_UNDERRUN) {

  csi2_if_enable(isp, csi2, 1);
  csi2_ctx_enable(isp, csi2, 0, 1);
  isp_video_dmaqueue_flags_clr(&csi2->video_out);
 }

 return 0;
}
