
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct sd {scalar_t__ sensor; scalar_t__ bridge; void* jpegqual; void* gamma; void* sharpness; void* blue; void* red; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {void* exposure; void* autogain; void* gain; TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;


 scalar_t__ BRIDGE_TP6800 ;
 scalar_t__ BRIDGE_TP6810 ;
 int NGAMMA ;
 scalar_t__ SENSOR_CX0342 ;
 scalar_t__ SENSOR_SOI763A ;
 int V4L2_CID_AUTOGAIN ;
 int V4L2_CID_BLUE_BALANCE ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_GAMMA ;
 int V4L2_CID_JPEG_COMPRESSION_QUALITY ;
 int V4L2_CID_RED_BALANCE ;
 int V4L2_CID_SHARPNESS ;
 int pr_err (char*) ;
 int sd_ctrl_ops ;
 int v4l2_ctrl_auto_cluster (int,void**,int ,int) ;
 int v4l2_ctrl_cluster (int,void**) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;

__attribute__((used)) static int sd_init_controls(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *)gspca_dev;
 struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;

 gspca_dev->vdev.ctrl_handler = hdl;
 v4l2_ctrl_handler_init(hdl, 4);
 gspca_dev->exposure = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_EXPOSURE, 1, 0xdc, 1, 0x4e);
 if (sd->sensor == SENSOR_CX0342) {
  sd->red = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_RED_BALANCE, 0, 4095, 1, 256);
  sd->blue = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_BLUE_BALANCE, 0, 4095, 1, 256);
 }
 if (sd->sensor == SENSOR_SOI763A)
  gspca_dev->gain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_GAIN, 0, 15, 1, 3);
 else
  gspca_dev->gain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_GAIN, 0, 4095, 1, 256);
 sd->sharpness = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_SHARPNESS, 0, 3, 1, 2);
 sd->gamma = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_GAMMA, 0, NGAMMA - 1, 1,
   (sd->sensor == SENSOR_SOI763A &&
    sd->bridge == BRIDGE_TP6800) ? 0 : 1);
 if (sd->bridge == BRIDGE_TP6810)
  gspca_dev->autogain = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_AUTOGAIN, 0, 1, 1, 1);
 if (sd->sensor == SENSOR_SOI763A)
  sd->jpegqual = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_JPEG_COMPRESSION_QUALITY,
   0, 15, 1, (sd->bridge == BRIDGE_TP6810) ? 0 : 13);

 if (hdl->error) {
  pr_err("Could not initialize controls\n");
  return hdl->error;
 }
 if (gspca_dev->autogain)
  v4l2_ctrl_auto_cluster(3, &gspca_dev->autogain, 0, 0);
 else
  v4l2_ctrl_cluster(2, &gspca_dev->exposure);
 return 0;
}
