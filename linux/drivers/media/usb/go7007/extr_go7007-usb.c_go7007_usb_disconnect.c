
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct go7007 {int v4l2_dev; int queue_lock; int serialize_lock; int vdev; int status; scalar_t__ audio_enabled; } ;


 int STATUS_SHUTDOWN ;
 int go7007_snd_remove (struct go7007*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct go7007* to_go7007 (int ) ;
 int usb_get_intfdata (struct usb_interface*) ;
 int v4l2_device_disconnect (int *) ;
 int v4l2_device_put (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static void go7007_usb_disconnect(struct usb_interface *intf)
{
 struct go7007 *go = to_go7007(usb_get_intfdata(intf));

 mutex_lock(&go->queue_lock);
 mutex_lock(&go->serialize_lock);

 if (go->audio_enabled)
  go7007_snd_remove(go);

 go->status = STATUS_SHUTDOWN;
 v4l2_device_disconnect(&go->v4l2_dev);
 video_unregister_device(&go->vdev);
 mutex_unlock(&go->serialize_lock);
 mutex_unlock(&go->queue_lock);

 v4l2_device_put(&go->v4l2_dev);
}
