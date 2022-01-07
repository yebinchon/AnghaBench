
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct stk1160 {int v4l2_dev; int vb_queue_lock; int v4l_lock; int * udev; int vdev; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stk1160_clear_queue (struct stk1160*) ;
 int stk1160_uninit_isoc (struct stk1160*) ;
 struct stk1160* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int v4l2_device_disconnect (int *) ;
 int v4l2_device_put (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void stk1160_disconnect(struct usb_interface *interface)
{
 struct stk1160 *dev;

 dev = usb_get_intfdata(interface);
 usb_set_intfdata(interface, ((void*)0));





 mutex_lock(&dev->vb_queue_lock);
 mutex_lock(&dev->v4l_lock);


 stk1160_uninit_isoc(dev);

 stk1160_clear_queue(dev);

 video_unregister_device(&dev->vdev);
 v4l2_device_disconnect(&dev->v4l2_dev);


 dev->udev = ((void*)0);

 mutex_unlock(&dev->v4l_lock);
 mutex_unlock(&dev->vb_queue_lock);





 v4l2_device_put(&dev->v4l2_dev);
}
