
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_device {int * int_urb; } ;
typedef int gfp_t ;


 int usb_submit_urb (int *,int ) ;

int uvc_status_start(struct uvc_device *dev, gfp_t flags)
{
 if (dev->int_urb == ((void*)0))
  return 0;

 return usb_submit_urb(dev->int_urb, flags);
}
