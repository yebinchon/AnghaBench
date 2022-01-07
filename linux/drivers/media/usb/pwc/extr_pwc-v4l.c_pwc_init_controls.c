
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct v4l2_ctrl_config {int def; int id; void* name; } ;
struct pwc_device {int type; int features; void* motor_pan; void* motor_tilt_reset; void* motor_pan_reset; void* motor_tilt; void* awb_delay; void* awb_speed; TYPE_2__* restore_factory; TYPE_1__* restore_user; void* save_user; void* noise_reduction; void* flicker; void* backlight; void* autocontour; void* contour; void* colorfx; void** autogain_expo_cluster; void* exposure; void* gain; void* autogain; void* exposure_auto; void* auto_white_balance; void* blue_balance; void* red_balance; void* gamma; void* saturation; int saturation_fmt; void* contrast; void* brightness; struct v4l2_ctrl_handler ctrl_handler; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int flags; } ;


 int AGC_MODE_FORMATTER ;
 int AUTO_CONTOUR_FORMATTER ;
 int AWB_CONTROL_DELAY_FORMATTER ;
 int AWB_CONTROL_SPEED_FORMATTER ;
 int BACK_LIGHT_COMPENSATION_FORMATTER ;
 int BRIGHTNESS_FORMATTER ;
 int COLOUR_MODE_FORMATTER ;
 int CONTRAST_FORMATTER ;
 scalar_t__ DEVICE_USE_CODEC2 (int) ;
 scalar_t__ DEVICE_USE_CODEC3 (int) ;
 int DYNAMIC_NOISE_CONTROL_FORMATTER ;
 int FEATURE_MOTOR_PANTILT ;
 int FLICKERLESS_MODE_FORMATTER ;
 int GAMMA_FORMATTER ;
 int GET_CHROM_CTL ;
 int GET_LUM_CTL ;
 int GET_STATUS_CTL ;
 int PRESET_AGC_FORMATTER ;
 int PRESET_CONTOUR_FORMATTER ;
 int PRESET_MANUAL_BLUE_GAIN_FORMATTER ;
 int PRESET_MANUAL_RED_GAIN_FORMATTER ;
 int READ_SHUTTER_FORMATTER ;
 int SATURATION_MODE_FORMATTER1 ;
 int SATURATION_MODE_FORMATTER2 ;
 int SHUTTER_MODE_FORMATTER ;
 int V4L2_CID_AUTOGAIN ;
 int V4L2_CID_BLUE_BALANCE ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_COLORFX ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_EXPOSURE ;
 int V4L2_CID_EXPOSURE_AUTO ;
 int V4L2_CID_GAIN ;
 int V4L2_CID_GAMMA ;
 int V4L2_CID_PAN_RELATIVE ;
 int V4L2_CID_PAN_RESET ;
 int V4L2_CID_RED_BALANCE ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_TILT_RELATIVE ;
 int V4L2_CID_TILT_RESET ;
 int V4L2_CTRL_FLAG_UPDATE ;
 int V4L2_EXPOSURE_MANUAL ;
 int WB_MODE_FORMATTER ;
 int awb_auto ;
 int awb_manual ;
 struct v4l2_ctrl_config pwc_auto_white_balance_cfg ;
 struct v4l2_ctrl_config pwc_autocontour_cfg ;
 struct v4l2_ctrl_config pwc_awb_delay_cfg ;
 struct v4l2_ctrl_config pwc_awb_speed_cfg ;
 struct v4l2_ctrl_config pwc_backlight_cfg ;
 struct v4l2_ctrl_config pwc_contour_cfg ;
 int pwc_ctrl_ops ;
 struct v4l2_ctrl_config pwc_flicker_cfg ;
 int pwc_get_s8_ctrl (struct pwc_device*,int ,int ,int*) ;
 int pwc_get_u16_ctrl (struct pwc_device*,int ,int ,int*) ;
 int pwc_get_u8_ctrl (struct pwc_device*,int ,int ,int*) ;
 struct v4l2_ctrl_config pwc_noise_reduction_cfg ;
 struct v4l2_ctrl_config pwc_restore_factory_cfg ;
 struct v4l2_ctrl_config pwc_restore_user_cfg ;
 struct v4l2_ctrl_config pwc_save_user_cfg ;
 int v4l2_ctrl_auto_cluster (int,void**,int ,int) ;
 int v4l2_ctrl_cluster (int,void**) ;
 void* v4l2_ctrl_get_name (int ) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 void* v4l2_ctrl_new_custom (struct v4l2_ctrl_handler*,struct v4l2_ctrl_config*,int *) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;
 void* v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,int *,int ,int,int ,int) ;

int pwc_init_controls(struct pwc_device *pdev)
{
 struct v4l2_ctrl_handler *hdl;
 struct v4l2_ctrl_config cfg;
 int r, def;

 hdl = &pdev->ctrl_handler;
 r = v4l2_ctrl_handler_init(hdl, 20);
 if (r)
  return r;


 r = pwc_get_u8_ctrl(pdev, GET_LUM_CTL, BRIGHTNESS_FORMATTER, &def);
 if (r || def > 127)
  def = 63;
 pdev->brightness = v4l2_ctrl_new_std(hdl, &pwc_ctrl_ops,
    V4L2_CID_BRIGHTNESS, 0, 127, 1, def);

 r = pwc_get_u8_ctrl(pdev, GET_LUM_CTL, CONTRAST_FORMATTER, &def);
 if (r || def > 63)
  def = 31;
 pdev->contrast = v4l2_ctrl_new_std(hdl, &pwc_ctrl_ops,
    V4L2_CID_CONTRAST, 0, 63, 1, def);

 if (pdev->type >= 675) {
  if (pdev->type < 730)
   pdev->saturation_fmt = SATURATION_MODE_FORMATTER2;
  else
   pdev->saturation_fmt = SATURATION_MODE_FORMATTER1;
  r = pwc_get_s8_ctrl(pdev, GET_CHROM_CTL, pdev->saturation_fmt,
        &def);
  if (r || def < -100 || def > 100)
   def = 0;
  pdev->saturation = v4l2_ctrl_new_std(hdl, &pwc_ctrl_ops,
          V4L2_CID_SATURATION, -100, 100, 1, def);
 }

 r = pwc_get_u8_ctrl(pdev, GET_LUM_CTL, GAMMA_FORMATTER, &def);
 if (r || def > 31)
  def = 15;
 pdev->gamma = v4l2_ctrl_new_std(hdl, &pwc_ctrl_ops,
    V4L2_CID_GAMMA, 0, 31, 1, def);


 r = pwc_get_u8_ctrl(pdev, GET_CHROM_CTL, WB_MODE_FORMATTER, &def);
 if (r || def > awb_auto)
  def = awb_auto;
 cfg = pwc_auto_white_balance_cfg;
 cfg.name = v4l2_ctrl_get_name(cfg.id);
 cfg.def = def;
 pdev->auto_white_balance = v4l2_ctrl_new_custom(hdl, &cfg, ((void*)0));

 if (!pdev->auto_white_balance)
  return hdl->error;

 r = pwc_get_u8_ctrl(pdev, GET_CHROM_CTL,
       PRESET_MANUAL_RED_GAIN_FORMATTER, &def);
 if (r)
  def = 127;
 pdev->red_balance = v4l2_ctrl_new_std(hdl, &pwc_ctrl_ops,
    V4L2_CID_RED_BALANCE, 0, 255, 1, def);

 r = pwc_get_u8_ctrl(pdev, GET_CHROM_CTL,
       PRESET_MANUAL_BLUE_GAIN_FORMATTER, &def);
 if (r)
  def = 127;
 pdev->blue_balance = v4l2_ctrl_new_std(hdl, &pwc_ctrl_ops,
    V4L2_CID_BLUE_BALANCE, 0, 255, 1, def);

 v4l2_ctrl_auto_cluster(3, &pdev->auto_white_balance, awb_manual, 1);


 r = pwc_get_u8_ctrl(pdev, GET_LUM_CTL, AGC_MODE_FORMATTER, &def);
 if (r || (def != 0 && def != 0xff))
  def = 0;

 pdev->autogain = v4l2_ctrl_new_std(hdl, &pwc_ctrl_ops,
    V4L2_CID_AUTOGAIN, 0, 1, 1, def == 0);
 if (!pdev->autogain)
  return hdl->error;

 r = pwc_get_u8_ctrl(pdev, GET_LUM_CTL, PRESET_AGC_FORMATTER, &def);
 if (r || def > 63)
  def = 31;
 pdev->gain = v4l2_ctrl_new_std(hdl, &pwc_ctrl_ops,
    V4L2_CID_GAIN, 0, 63, 1, def);


 if (DEVICE_USE_CODEC2(pdev->type)) {
  r = pwc_get_u8_ctrl(pdev, GET_LUM_CTL, SHUTTER_MODE_FORMATTER,
        &def);
  if (r || (def != 0 && def != 0xff))
   def = 0;




  pdev->exposure_auto = v4l2_ctrl_new_std_menu(hdl,
     &pwc_ctrl_ops,
     V4L2_CID_EXPOSURE_AUTO,
     1, 0, def != 0);
  if (!pdev->exposure_auto)
   return hdl->error;


  r = pwc_get_u16_ctrl(pdev, GET_STATUS_CTL,
         READ_SHUTTER_FORMATTER, &def);
  if (r || def > 655)
   def = 655;
  pdev->exposure = v4l2_ctrl_new_std(hdl, &pwc_ctrl_ops,
     V4L2_CID_EXPOSURE, 0, 655, 1, def);

  v4l2_ctrl_auto_cluster(2, &pdev->autogain, 0, 1);
  v4l2_ctrl_auto_cluster(2, &pdev->exposure_auto,
           V4L2_EXPOSURE_MANUAL, 1);
 } else if (DEVICE_USE_CODEC3(pdev->type)) {

  r = pwc_get_u16_ctrl(pdev, GET_STATUS_CTL,
         READ_SHUTTER_FORMATTER, &def);
  if (r || def > 255)
   def = 255;
  pdev->exposure = v4l2_ctrl_new_std(hdl, &pwc_ctrl_ops,
     V4L2_CID_EXPOSURE, 0, 255, 1, def);

  pdev->autogain_expo_cluster[0] = pdev->autogain;
  pdev->autogain_expo_cluster[1] = pdev->gain;
  pdev->autogain_expo_cluster[2] = pdev->exposure;
  v4l2_ctrl_auto_cluster(3, pdev->autogain_expo_cluster,
           0, 1);
 }


 r = pwc_get_u8_ctrl(pdev, GET_CHROM_CTL, COLOUR_MODE_FORMATTER,
    &def);
 if (r || (def != 0 && def != 0xff))
  def = 0xff;

 pdev->colorfx = v4l2_ctrl_new_std_menu(hdl, &pwc_ctrl_ops,
    V4L2_CID_COLORFX, 1, 0, def == 0);


 r = pwc_get_u8_ctrl(pdev, GET_LUM_CTL, AUTO_CONTOUR_FORMATTER, &def);
 if (r || (def != 0 && def != 0xff))
  def = 0;
 cfg = pwc_autocontour_cfg;
 cfg.def = def == 0;
 pdev->autocontour = v4l2_ctrl_new_custom(hdl, &cfg, ((void*)0));
 if (!pdev->autocontour)
  return hdl->error;

 r = pwc_get_u8_ctrl(pdev, GET_LUM_CTL, PRESET_CONTOUR_FORMATTER, &def);
 if (r || def > 63)
  def = 31;
 cfg = pwc_contour_cfg;
 cfg.def = def;
 pdev->contour = v4l2_ctrl_new_custom(hdl, &cfg, ((void*)0));

 v4l2_ctrl_auto_cluster(2, &pdev->autocontour, 0, 0);


 r = pwc_get_u8_ctrl(pdev, GET_LUM_CTL,
       BACK_LIGHT_COMPENSATION_FORMATTER, &def);
 if (r || (def != 0 && def != 0xff))
  def = 0;
 cfg = pwc_backlight_cfg;
 cfg.name = v4l2_ctrl_get_name(cfg.id);
 cfg.def = def == 0;
 pdev->backlight = v4l2_ctrl_new_custom(hdl, &cfg, ((void*)0));


 r = pwc_get_u8_ctrl(pdev, GET_LUM_CTL,
       FLICKERLESS_MODE_FORMATTER, &def);
 if (r || (def != 0 && def != 0xff))
  def = 0;
 cfg = pwc_flicker_cfg;
 cfg.name = v4l2_ctrl_get_name(cfg.id);
 cfg.def = def == 0;
 pdev->flicker = v4l2_ctrl_new_custom(hdl, &cfg, ((void*)0));


 r = pwc_get_u8_ctrl(pdev, GET_LUM_CTL,
       DYNAMIC_NOISE_CONTROL_FORMATTER, &def);
 if (r || def > 3)
  def = 2;
 cfg = pwc_noise_reduction_cfg;
 cfg.def = def;
 pdev->noise_reduction = v4l2_ctrl_new_custom(hdl, &cfg, ((void*)0));


 pdev->save_user = v4l2_ctrl_new_custom(hdl, &pwc_save_user_cfg, ((void*)0));
 pdev->restore_user = v4l2_ctrl_new_custom(hdl, &pwc_restore_user_cfg,
        ((void*)0));
 if (pdev->restore_user)
  pdev->restore_user->flags |= V4L2_CTRL_FLAG_UPDATE;
 pdev->restore_factory = v4l2_ctrl_new_custom(hdl,
           &pwc_restore_factory_cfg,
           ((void*)0));
 if (pdev->restore_factory)
  pdev->restore_factory->flags |= V4L2_CTRL_FLAG_UPDATE;


 r = pwc_get_u8_ctrl(pdev, GET_CHROM_CTL,
       AWB_CONTROL_SPEED_FORMATTER, &def);
 if (r || def < 1 || def > 32)
  def = 1;
 cfg = pwc_awb_speed_cfg;
 cfg.def = def;
 pdev->awb_speed = v4l2_ctrl_new_custom(hdl, &cfg, ((void*)0));

 r = pwc_get_u8_ctrl(pdev, GET_CHROM_CTL,
       AWB_CONTROL_DELAY_FORMATTER, &def);
 if (r || def > 63)
  def = 0;
 cfg = pwc_awb_delay_cfg;
 cfg.def = def;
 pdev->awb_delay = v4l2_ctrl_new_custom(hdl, &cfg, ((void*)0));

 if (!(pdev->features & FEATURE_MOTOR_PANTILT))
  return hdl->error;


 pdev->motor_pan = v4l2_ctrl_new_std(hdl, &pwc_ctrl_ops,
    V4L2_CID_PAN_RELATIVE, -4480, 4480, 64, 0);
 if (!pdev->motor_pan)
  return hdl->error;
 pdev->motor_tilt = v4l2_ctrl_new_std(hdl, &pwc_ctrl_ops,
    V4L2_CID_TILT_RELATIVE, -1920, 1920, 64, 0);
 pdev->motor_pan_reset = v4l2_ctrl_new_std(hdl, &pwc_ctrl_ops,
    V4L2_CID_PAN_RESET, 0, 0, 0, 0);
 pdev->motor_tilt_reset = v4l2_ctrl_new_std(hdl, &pwc_ctrl_ops,
    V4L2_CID_TILT_RESET, 0, 0, 0, 0);
 v4l2_ctrl_cluster(4, &pdev->motor_pan);

 return hdl->error;
}
