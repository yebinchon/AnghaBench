
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct si470x_device {int v4l2_dev; int lock; int int_in_urb; int videodev; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct si470x_device* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int v4l2_device_disconnect (int *) ;
 int v4l2_device_put (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void si470x_usb_driver_disconnect(struct usb_interface *intf)
{
 struct si470x_device *radio = usb_get_intfdata(intf);

 mutex_lock(&radio->lock);
 v4l2_device_disconnect(&radio->v4l2_dev);
 video_unregister_device(&radio->videodev);
 usb_kill_urb(radio->int_in_urb);
 usb_set_intfdata(intf, ((void*)0));
 mutex_unlock(&radio->lock);
 v4l2_device_put(&radio->v4l2_dev);
}
