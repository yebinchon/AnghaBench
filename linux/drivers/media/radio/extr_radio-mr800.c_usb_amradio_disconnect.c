
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct amradio_device {int v4l2_dev; int lock; int vdev; } ;


 int amradio_set_mute (struct amradio_device*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct amradio_device* to_amradio_dev (int ) ;
 int usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int v4l2_device_disconnect (int *) ;
 int v4l2_device_put (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void usb_amradio_disconnect(struct usb_interface *intf)
{
 struct amradio_device *radio = to_amradio_dev(usb_get_intfdata(intf));

 mutex_lock(&radio->lock);
 video_unregister_device(&radio->vdev);
 amradio_set_mute(radio, 1);
 usb_set_intfdata(intf, ((void*)0));
 v4l2_device_disconnect(&radio->v4l2_dev);
 mutex_unlock(&radio->lock);
 v4l2_device_put(&radio->v4l2_dev);
}
