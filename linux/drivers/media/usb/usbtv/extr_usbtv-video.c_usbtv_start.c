
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtv {struct urb** isoc_urbs; int udev; } ;
struct urb {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int USBTV_ISOC_TRANSFERS ;
 int usb_set_interface (int ,int ,int) ;
 int usb_submit_urb (struct urb*,int ) ;
 int usbtv_audio_resume (struct usbtv*) ;
 int usbtv_audio_suspend (struct usbtv*) ;
 int usbtv_setup_capture (struct usbtv*) ;
 struct urb* usbtv_setup_iso_transfer (struct usbtv*) ;
 int usbtv_stop (struct usbtv*) ;

__attribute__((used)) static int usbtv_start(struct usbtv *usbtv)
{
 int i;
 int ret;

 usbtv_audio_suspend(usbtv);

 ret = usb_set_interface(usbtv->udev, 0, 0);
 if (ret < 0)
  return ret;

 ret = usbtv_setup_capture(usbtv);
 if (ret < 0)
  return ret;

 ret = usb_set_interface(usbtv->udev, 0, 1);
 if (ret < 0)
  return ret;

 usbtv_audio_resume(usbtv);

 for (i = 0; i < USBTV_ISOC_TRANSFERS; i++) {
  struct urb *ip;

  ip = usbtv_setup_iso_transfer(usbtv);
  if (ip == ((void*)0)) {
   ret = -ENOMEM;
   goto start_fail;
  }
  usbtv->isoc_urbs[i] = ip;

  ret = usb_submit_urb(ip, GFP_KERNEL);
  if (ret < 0)
   goto start_fail;
 }

 return 0;

start_fail:
 usbtv_stop(usbtv);
 return ret;
}
