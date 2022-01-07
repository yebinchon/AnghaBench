
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int bEndpointAddress; } ;
struct uvc_streaming {TYPE_3__* dev; TYPE_1__ header; int intfnum; TYPE_2__* intf; } ;
struct TYPE_6__ {int udev; } ;
struct TYPE_5__ {int num_altsetting; } ;


 unsigned int USB_ENDPOINT_DIR_MASK ;
 unsigned int USB_ENDPOINT_NUMBER_MASK ;
 int usb_clear_halt (int ,unsigned int) ;
 int usb_set_interface (int ,int ,int ) ;
 unsigned int usb_sndbulkpipe (int ,unsigned int) ;
 int uvc_video_clock_cleanup (struct uvc_streaming*) ;
 int uvc_video_stop_transfer (struct uvc_streaming*,int) ;

void uvc_video_stop_streaming(struct uvc_streaming *stream)
{
 uvc_video_stop_transfer(stream, 1);

 if (stream->intf->num_altsetting > 1) {
  usb_set_interface(stream->dev->udev, stream->intfnum, 0);
 } else {





  unsigned int epnum = stream->header.bEndpointAddress
       & USB_ENDPOINT_NUMBER_MASK;
  unsigned int dir = stream->header.bEndpointAddress
     & USB_ENDPOINT_DIR_MASK;
  unsigned int pipe;

  pipe = usb_sndbulkpipe(stream->dev->udev, epnum) | dir;
  usb_clear_halt(stream->dev->udev, pipe);
 }

 uvc_video_clock_cleanup(stream);
}
