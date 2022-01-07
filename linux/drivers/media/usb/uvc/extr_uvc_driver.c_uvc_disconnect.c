
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uvc_device {int ref; } ;
struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct TYPE_3__ {scalar_t__ bInterfaceSubClass; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 scalar_t__ UVC_SC_VIDEOSTREAMING ;
 int kref_put (int *,int ) ;
 struct uvc_device* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int uvc_delete ;
 int uvc_unregister_video (struct uvc_device*) ;

__attribute__((used)) static void uvc_disconnect(struct usb_interface *intf)
{
 struct uvc_device *dev = usb_get_intfdata(intf);




 usb_set_intfdata(intf, ((void*)0));

 if (intf->cur_altsetting->desc.bInterfaceSubClass ==
     UVC_SC_VIDEOSTREAMING)
  return;

 uvc_unregister_video(dev);
 kref_put(&dev->ref, uvc_delete);
}
