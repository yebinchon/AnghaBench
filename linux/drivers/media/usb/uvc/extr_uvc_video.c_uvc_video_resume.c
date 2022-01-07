
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_streaming {int ctrl; int queue; scalar_t__ frozen; int intfnum; TYPE_1__* dev; } ;
struct TYPE_2__ {int udev; } ;


 int GFP_NOIO ;
 int usb_set_interface (int ,int ,int ) ;
 int uvc_commit_video (struct uvc_streaming*,int *) ;
 int uvc_queue_streaming (int *) ;
 int uvc_video_clock_reset (struct uvc_streaming*) ;
 int uvc_video_start_transfer (struct uvc_streaming*,int ) ;

int uvc_video_resume(struct uvc_streaming *stream, int reset)
{
 int ret;






 if (reset)
  usb_set_interface(stream->dev->udev, stream->intfnum, 0);

 stream->frozen = 0;

 uvc_video_clock_reset(stream);

 if (!uvc_queue_streaming(&stream->queue))
  return 0;

 ret = uvc_commit_video(stream, &stream->ctrl);
 if (ret < 0)
  return ret;

 return uvc_video_start_transfer(stream, GFP_NOIO);
}
