
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct sd {int model; int lighting; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct gspca_dev {TYPE_1__ vdev; struct v4l2_ctrl_handler ctrl_handler; } ;
 int V4L2_CID_BACKLIGHT_COMPENSATION ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_HUE ;
 int V4L2_CID_SHARPNESS ;
 int pr_err (char*) ;
 int sd_ctrl_ops ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int) ;

__attribute__((used)) static int sd_init_controls(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *)gspca_dev;
 struct v4l2_ctrl_handler *hdl = &gspca_dev->ctrl_handler;
 bool has_brightness;
 bool has_contrast;
 bool has_hue;
 bool has_sharpness;
 bool has_lighting;
 bool has_hflip;

 has_brightness = has_contrast = has_hue =
  has_sharpness = has_hflip = has_lighting = 0;
 switch (sd->model) {
 case 132:
  has_contrast = has_hflip = 1;
  break;
 case 131:
  has_brightness = has_contrast =
   has_sharpness = has_lighting = 1;
  break;
 case 130:
  has_brightness = has_hue = has_lighting = 1;
  break;
 case 129:
  has_brightness = has_contrast = has_sharpness = 1;
  break;
 case 128:
  has_brightness = has_hue = 1;
  break;
 case 133:
  has_brightness = has_hue =
   has_sharpness = has_hflip = has_lighting = 1;
  break;
 }
 gspca_dev->vdev.ctrl_handler = hdl;
 v4l2_ctrl_handler_init(hdl, 5);
 if (has_brightness)
  v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_BRIGHTNESS, 0, 63, 1, 32);
 if (has_contrast)
  v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_CONTRAST, 0, 20, 1, 10);
 if (has_hue)
  v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_HUE, 0, 127, 1, 63);
 if (has_sharpness)
  v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_SHARPNESS, 0, 6, 1, 3);
 if (has_lighting)
  sd->lighting = v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_BACKLIGHT_COMPENSATION, 0, 2, 1, 1);
 if (has_hflip)
  v4l2_ctrl_new_std(hdl, &sd_ctrl_ops,
   V4L2_CID_HFLIP, 0, 1, 1, 0);

 if (hdl->error) {
  pr_err("Could not initialize controls\n");
  return hdl->error;
 }
 return 0;
}
