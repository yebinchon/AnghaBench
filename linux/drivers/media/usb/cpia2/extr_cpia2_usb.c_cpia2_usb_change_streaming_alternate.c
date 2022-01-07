
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int stream_mode; } ;
struct TYPE_4__ {TYPE_1__ camera_state; } ;
struct camera_data {TYPE_2__ params; } ;


 int EINVAL ;
 unsigned int USBIF_ISO_1 ;
 unsigned int USBIF_ISO_6 ;
 int configure_transfer_mode (struct camera_data*,unsigned int) ;
 int cpia2_reset_camera (struct camera_data*) ;
 int cpia2_usb_stream_pause (struct camera_data*) ;
 int cpia2_usb_stream_resume (struct camera_data*) ;

int cpia2_usb_change_streaming_alternate(struct camera_data *cam,
      unsigned int alt)
{
 int ret = 0;

 if(alt < USBIF_ISO_1 || alt > USBIF_ISO_6)
  return -EINVAL;

 if(alt == cam->params.camera_state.stream_mode)
  return 0;

 cpia2_usb_stream_pause(cam);

 configure_transfer_mode(cam, alt);

 cam->params.camera_state.stream_mode = alt;


 cpia2_reset_camera(cam);

 cpia2_usb_stream_resume(cam);

 return ret;
}
