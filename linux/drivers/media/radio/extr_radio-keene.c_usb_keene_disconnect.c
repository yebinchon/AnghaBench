
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct keene_device {int v4l2_dev; int lock; int vdev; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct keene_device* to_keene_dev (int ) ;
 int usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int v4l2_device_disconnect (int *) ;
 int v4l2_device_put (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void usb_keene_disconnect(struct usb_interface *intf)
{
 struct keene_device *radio = to_keene_dev(usb_get_intfdata(intf));

 mutex_lock(&radio->lock);
 usb_set_intfdata(intf, ((void*)0));
 video_unregister_device(&radio->vdev);
 v4l2_device_disconnect(&radio->v4l2_dev);
 mutex_unlock(&radio->lock);
 v4l2_device_put(&radio->v4l2_dev);
}
