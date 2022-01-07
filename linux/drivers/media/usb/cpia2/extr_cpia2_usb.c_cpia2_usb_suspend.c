
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct camera_data {int streaming; int v4l2_lock; } ;
typedef int pm_message_t ;


 int cpia2_usb_stream_stop (struct camera_data*) ;
 int dev_info (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct camera_data* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int cpia2_usb_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct camera_data *cam = usb_get_intfdata(intf);

 mutex_lock(&cam->v4l2_lock);
 if (cam->streaming) {
  cpia2_usb_stream_stop(cam);
  cam->streaming = 1;
 }
 mutex_unlock(&cam->v4l2_lock);

 dev_info(&intf->dev, "going into suspend..\n");
 return 0;
}
