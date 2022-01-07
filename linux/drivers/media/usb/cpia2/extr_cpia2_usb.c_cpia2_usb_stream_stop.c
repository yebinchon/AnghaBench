
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camera_data {scalar_t__ streaming; } ;


 int configure_transfer_mode (struct camera_data*,int ) ;
 int cpia2_usb_stream_pause (struct camera_data*) ;

int cpia2_usb_stream_stop(struct camera_data *cam)
{
 int ret;

 ret = cpia2_usb_stream_pause(cam);
 cam->streaming = 0;
 configure_transfer_mode(cam, 0);
 return ret;
}
