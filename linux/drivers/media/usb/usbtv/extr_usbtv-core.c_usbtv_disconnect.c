
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtv {int v4l2_dev; int * udev; } ;
struct usb_interface {int dummy; } ;


 struct usbtv* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (int *) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int usbtv_audio_free (struct usbtv*) ;
 int usbtv_video_free (struct usbtv*) ;
 int v4l2_device_put (int *) ;

__attribute__((used)) static void usbtv_disconnect(struct usb_interface *intf)
{
 struct usbtv *usbtv = usb_get_intfdata(intf);

 usb_set_intfdata(intf, ((void*)0));

 if (!usbtv)
  return;

 usbtv_audio_free(usbtv);
 usbtv_video_free(usbtv);

 usb_put_dev(usbtv->udev);
 usbtv->udev = ((void*)0);



 v4l2_device_put(&usbtv->v4l2_dev);
}
