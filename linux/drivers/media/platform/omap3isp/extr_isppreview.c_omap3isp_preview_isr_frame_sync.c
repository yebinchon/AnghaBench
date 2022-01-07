
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dmaqueue_flags; } ;
struct isp_prev_device {scalar_t__ state; TYPE_1__ video_out; } ;


 scalar_t__ ISP_PIPELINE_STREAM_CONTINUOUS ;
 int ISP_VIDEO_DMAQUEUE_QUEUED ;
 int isp_video_dmaqueue_flags_clr (TYPE_1__*) ;
 int preview_enable_oneshot (struct isp_prev_device*) ;

void omap3isp_preview_isr_frame_sync(struct isp_prev_device *prev)
{






 if (prev->state == ISP_PIPELINE_STREAM_CONTINUOUS &&
     prev->video_out.dmaqueue_flags & ISP_VIDEO_DMAQUEUE_QUEUED) {
  preview_enable_oneshot(prev);
  isp_video_dmaqueue_flags_clr(&prev->video_out);
 }
}
