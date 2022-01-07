
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_device {int int_urb; } ;


 int usb_kill_urb (int ) ;
 int uvc_input_unregister (struct uvc_device*) ;

void uvc_status_unregister(struct uvc_device *dev)
{
 usb_kill_urb(dev->int_urb);
 uvc_input_unregister(dev);
}
