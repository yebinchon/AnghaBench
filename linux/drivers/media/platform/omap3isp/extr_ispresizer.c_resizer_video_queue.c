
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isp_video {scalar_t__ type; TYPE_1__* isp; } ;
struct isp_res_device {int dummy; } ;
struct isp_buffer {int dma; } ;
struct TYPE_2__ {struct isp_res_device isp_res; } ;


 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int resizer_set_inaddr (struct isp_res_device*,int ) ;
 int resizer_set_outaddr (struct isp_res_device*,int ) ;

__attribute__((used)) static int resizer_video_queue(struct isp_video *video,
          struct isp_buffer *buffer)
{
 struct isp_res_device *res = &video->isp->isp_res;

 if (video->type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
  resizer_set_inaddr(res, buffer->dma);
 if (video->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  resizer_set_outaddr(res, buffer->dma);

 return 0;
}
