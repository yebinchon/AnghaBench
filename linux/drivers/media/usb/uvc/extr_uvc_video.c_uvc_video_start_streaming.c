
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvc_streaming {int intfnum; TYPE_1__* dev; int ctrl; } ;
struct TYPE_2__ {int udev; } ;


 int GFP_KERNEL ;
 int usb_set_interface (int ,int ,int ) ;
 int uvc_commit_video (struct uvc_streaming*,int *) ;
 int uvc_video_clock_cleanup (struct uvc_streaming*) ;
 int uvc_video_clock_init (struct uvc_streaming*) ;
 int uvc_video_start_transfer (struct uvc_streaming*,int ) ;

int uvc_video_start_streaming(struct uvc_streaming *stream)
{
 int ret;

 ret = uvc_video_clock_init(stream);
 if (ret < 0)
  return ret;


 ret = uvc_commit_video(stream, &stream->ctrl);
 if (ret < 0)
  goto error_commit;

 ret = uvc_video_start_transfer(stream, GFP_KERNEL);
 if (ret < 0)
  goto error_video;

 return 0;

error_video:
 usb_set_interface(stream->dev->udev, stream->intfnum, 0);
error_commit:
 uvc_video_clock_cleanup(stream);

 return ret;
}
