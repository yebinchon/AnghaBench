
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uvc_streaming {int async_wq; int intfnum; int intf; struct uvc_device* dev; int mutex; } ;
struct uvc_device {int dummy; } ;
struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct TYPE_3__ {int bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int GFP_KERNEL ;
 int WQ_HIGHPRI ;
 int WQ_UNBOUND ;
 int alloc_workqueue (char*,int,int ) ;
 struct uvc_streaming* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int usb_get_intf (struct usb_interface*) ;
 int uvc_stream_delete (struct uvc_streaming*) ;

__attribute__((used)) static struct uvc_streaming *uvc_stream_new(struct uvc_device *dev,
         struct usb_interface *intf)
{
 struct uvc_streaming *stream;

 stream = kzalloc(sizeof(*stream), GFP_KERNEL);
 if (stream == ((void*)0))
  return ((void*)0);

 mutex_init(&stream->mutex);

 stream->dev = dev;
 stream->intf = usb_get_intf(intf);
 stream->intfnum = intf->cur_altsetting->desc.bInterfaceNumber;


 stream->async_wq = alloc_workqueue("uvcvideo", WQ_UNBOUND | WQ_HIGHPRI,
        0);
 if (!stream->async_wq) {
  uvc_stream_delete(stream);
  return ((void*)0);
 }

 return stream;
}
