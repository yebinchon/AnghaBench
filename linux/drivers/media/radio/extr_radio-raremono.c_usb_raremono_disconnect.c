
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct raremono_device {int v4l2_dev; int lock; int vdev; } ;


 int dev_info (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct raremono_device* to_raremono_dev (int ) ;
 int usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int v4l2_device_disconnect (int *) ;
 int v4l2_device_put (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void usb_raremono_disconnect(struct usb_interface *intf)
{
 struct raremono_device *radio = to_raremono_dev(usb_get_intfdata(intf));

 dev_info(&intf->dev, "Thanko's Raremono disconnected\n");

 mutex_lock(&radio->lock);
 usb_set_intfdata(intf, ((void*)0));
 video_unregister_device(&radio->vdev);
 v4l2_device_disconnect(&radio->v4l2_dev);
 mutex_unlock(&radio->lock);
 v4l2_device_put(&radio->v4l2_dev);
}
