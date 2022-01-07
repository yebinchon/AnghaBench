
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dmaqueue_flags; } ;
struct isp_res_device {scalar_t__ state; TYPE_1__ video_out; } ;


 scalar_t__ ISP_PIPELINE_STREAM_CONTINUOUS ;
 int ISP_VIDEO_DMAQUEUE_QUEUED ;
 int isp_video_dmaqueue_flags_clr (TYPE_1__*) ;
 int resizer_enable_oneshot (struct isp_res_device*) ;

void omap3isp_resizer_isr_frame_sync(struct isp_res_device *res)
{






 if (res->state == ISP_PIPELINE_STREAM_CONTINUOUS &&
     res->video_out.dmaqueue_flags & ISP_VIDEO_DMAQUEUE_QUEUED) {
  resizer_enable_oneshot(res);
  isp_video_dmaqueue_flags_clr(&res->video_out);
 }
}
