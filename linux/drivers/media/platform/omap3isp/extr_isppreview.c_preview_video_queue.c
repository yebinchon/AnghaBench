
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isp_video {scalar_t__ type; TYPE_1__* isp; } ;
struct isp_prev_device {int dummy; } ;
struct isp_buffer {int dma; } ;
struct TYPE_2__ {struct isp_prev_device isp_prev; } ;


 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int preview_set_inaddr (struct isp_prev_device*,int ) ;
 int preview_set_outaddr (struct isp_prev_device*,int ) ;

__attribute__((used)) static int preview_video_queue(struct isp_video *video,
          struct isp_buffer *buffer)
{
 struct isp_prev_device *prev = &video->isp->isp_prev;

 if (video->type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
  preview_set_inaddr(prev, buffer->dma);

 if (video->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  preview_set_outaddr(prev, buffer->dma);

 return 0;
}
