
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dev; } ;
struct TYPE_4__ {int stream_mode; } ;
struct TYPE_3__ {TYPE_2__ camera_state; } ;
struct camera_data {int v4l2_lock; TYPE_1__ params; scalar_t__ streaming; int hdl; } ;


 int cpia2_usb_stream_start (struct camera_data*,int ) ;
 int dev_info (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct camera_data* usb_get_intfdata (struct usb_interface*) ;
 int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static int cpia2_usb_resume(struct usb_interface *intf)
{
 struct camera_data *cam = usb_get_intfdata(intf);

 mutex_lock(&cam->v4l2_lock);
 v4l2_ctrl_handler_setup(&cam->hdl);
 if (cam->streaming) {
  cam->streaming = 0;
  cpia2_usb_stream_start(cam,
    cam->params.camera_state.stream_mode);
 }
 mutex_unlock(&cam->v4l2_lock);

 dev_info(&intf->dev, "coming out of suspend..\n");
 return 0;
}
