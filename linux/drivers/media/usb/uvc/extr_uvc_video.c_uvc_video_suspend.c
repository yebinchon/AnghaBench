
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_streaming {int frozen; int intfnum; TYPE_1__* dev; int queue; } ;
struct TYPE_2__ {int udev; } ;


 int usb_set_interface (int ,int ,int ) ;
 int uvc_queue_streaming (int *) ;
 int uvc_video_stop_transfer (struct uvc_streaming*,int ) ;

int uvc_video_suspend(struct uvc_streaming *stream)
{
 if (!uvc_queue_streaming(&stream->queue))
  return 0;

 stream->frozen = 1;
 uvc_video_stop_transfer(stream, 0);
 usb_set_interface(stream->dev->udev, stream->intfnum, 0);
 return 0;
}
