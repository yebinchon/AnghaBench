
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct camera_data {int v4l2_dev; int wq_stream; TYPE_1__* curbuff; scalar_t__ buffers; int v4l2_lock; } ;
struct TYPE_2__ {scalar_t__ length; int status; } ;


 int DBG (char*) ;
 int FRAME_READY ;
 int LOG (char*) ;
 int cpia2_unregister_camera (struct camera_data*) ;
 int cpia2_usb_stream_stop (struct camera_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct camera_data* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int v4l2_device_disconnect (int *) ;
 int v4l2_device_put (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void cpia2_usb_disconnect(struct usb_interface *intf)
{
 struct camera_data *cam = usb_get_intfdata(intf);
 usb_set_intfdata(intf, ((void*)0));

 DBG("Stopping stream\n");
 cpia2_usb_stream_stop(cam);

 mutex_lock(&cam->v4l2_lock);
 DBG("Unregistering camera\n");
 cpia2_unregister_camera(cam);
 v4l2_device_disconnect(&cam->v4l2_dev);
 mutex_unlock(&cam->v4l2_lock);

 if(cam->buffers) {
  DBG("Wakeup waiting processes\n");
  cam->curbuff->status = FRAME_READY;
  cam->curbuff->length = 0;
  wake_up_interruptible(&cam->wq_stream);
 }

 v4l2_device_put(&cam->v4l2_dev);

 LOG("CPiA2 camera disconnected.\n");
}
