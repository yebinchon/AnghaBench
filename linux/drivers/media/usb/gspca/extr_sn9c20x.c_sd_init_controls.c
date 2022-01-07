
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct sd {scalar_t__ sensor; void* autogain; void* hflip; void* blue; void* brightness; void* jpegqual; void* gain; void* exposure; void* vflip; void* red; void* gamma; void* hue; void* saturation; void* contrast; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;


 scalar_t__ SENSOR_MT9M001 ;
 scalar_t__ SENSOR_MT9M111 ;
 scalar_t__ SENSOR_MT9M112 ;
 scalar_t__ SENSOR_MT9V111 ;
 scalar_t__ SENSOR_MT9VPRB ;
 scalar_t__ SENSOR_OV7670 ;
 scalar_t__ SENSOR_OV9655 ;
 scalar_t__ SENSOR_SOI968 ;
 int V4L2_CID_AUTOGAIN ;
 int V4L2_CID_BLUE_BALANCE ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_GAMMA ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_HUE ;
 int V4L2_CID_JPEG_COMPRESSION_QUALITY ;
 int V4L2_CID_RED_BALANCE ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_VFLIP ;
 int pr_err (char*) ;
 int sd_ctrl_ops ;
 int v4l2_ctrl_auto_cluster (int,void**,int ,int) ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;

__attribute__((used)) static int sd_init_controls(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;

 gspca_dev->vdev.ctrl_handler = hdl;
 v4l2_ctrl_handler_init(hdl, 13);

 sd->brightness = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_BRIGHTNESS, 0, 255, 1, 127);
 sd->contrast = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_CONTRAST, 0, 255, 1, 127);
 sd->saturation = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_SATURATION, 0, 255, 1, 127);
 sd->hue = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_HUE, -180, 180, 1, 0);

 sd->gamma = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_GAMMA, 0, 255, 1, 0x10);

 sd->blue = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_BLUE_BALANCE, 0, 127, 1, 0x28);
 sd->red = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_RED_BALANCE, 0, 127, 1, 0x28);

 if (sd->sensor != SENSOR_OV9655 && sd->sensor != SENSOR_SOI968 &&
     sd->sensor != SENSOR_OV7670 && sd->sensor != SENSOR_MT9M001 &&
     sd->sensor != SENSOR_MT9VPRB) {
  sd->hflip = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_HFLIP, 0, 1, 1, 0);
  sd->vflip = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_VFLIP, 0, 1, 1, 0);
 }

 if (sd->sensor != SENSOR_SOI968 && sd->sensor != SENSOR_MT9VPRB &&
     sd->sensor != SENSOR_MT9M112 && sd->sensor != SENSOR_MT9M111 &&
     sd->sensor != SENSOR_MT9V111)
  sd->exposure = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_EXPOSURE, 0, 0x1780, 1, 0x33);

 if (sd->sensor != SENSOR_MT9VPRB && sd->sensor != SENSOR_MT9M112 &&
     sd->sensor != SENSOR_MT9M111 && sd->sensor != SENSOR_MT9V111) {
  sd->gain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_GAIN, 0, 28, 1, 0);
  sd->autogain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_AUTOGAIN, 0, 1, 1, 1);
 }

 sd->jpegqual = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_JPEG_COMPRESSION_QUALITY, 50, 90, 1, 80);
 if (hdl->error) {
  pr_err("Could not initialize controls\n");
  return hdl->error;
 }

 v4l2_ctrl_cluster(4, &sd->brightness);
 v4l2_ctrl_cluster(2, &sd->blue);
 if (sd->hflip)
  v4l2_ctrl_cluster(2, &sd->hflip);
 if (sd->autogain) {
  if (sd->sensor == SENSOR_SOI968)



   v4l2_ctrl_auto_cluster(3, &sd->autogain, 0, 0);
  else

   v4l2_ctrl_auto_cluster(2, &sd->autogain, 0, 0);
 }
 return 0;
}
