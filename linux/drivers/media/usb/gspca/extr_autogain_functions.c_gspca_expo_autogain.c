
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gspca_dev {TYPE_1__* exposure; TYPE_1__* gain; TYPE_1__* autogain; } ;
typedef int s32 ;
struct TYPE_3__ {int default_value; int minimum; int maximum; } ;


 int D_FRAM ;
 int abs (int) ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int,int,...) ;
 scalar_t__ v4l2_ctrl_g_ctrl (TYPE_1__*) ;
 int v4l2_ctrl_s_ctrl (TYPE_1__*,int) ;

int gspca_expo_autogain(
   struct gspca_dev *gspca_dev,
   int avg_lum,
   int desired_avg_lum,
   int deadzone,
   int gain_knee,
   int exposure_knee)
{
 s32 gain, orig_gain, exposure, orig_exposure;
 int i, steps, retval = 0;

 if (v4l2_ctrl_g_ctrl(gspca_dev->autogain) == 0)
  return 0;

 orig_gain = gain = v4l2_ctrl_g_ctrl(gspca_dev->gain);
 orig_exposure = exposure = v4l2_ctrl_g_ctrl(gspca_dev->exposure);



 steps = abs(desired_avg_lum - avg_lum) / deadzone;

 gspca_dbg(gspca_dev, D_FRAM, "autogain: lum: %d, desired: %d, steps: %d\n",
    avg_lum, desired_avg_lum, steps);

 for (i = 0; i < steps; i++) {
  if (avg_lum > desired_avg_lum) {
   if (gain > gain_knee)
    gain--;
   else if (exposure > exposure_knee)
    exposure--;
   else if (gain > gspca_dev->gain->default_value)
    gain--;
   else if (exposure > gspca_dev->exposure->minimum)
    exposure--;
   else if (gain > gspca_dev->gain->minimum)
    gain--;
   else
    break;
  } else {
   if (gain < gspca_dev->gain->default_value)
    gain++;
   else if (exposure < exposure_knee)
    exposure++;
   else if (gain < gain_knee)
    gain++;
   else if (exposure < gspca_dev->exposure->maximum)
    exposure++;
   else if (gain < gspca_dev->gain->maximum)
    gain++;
   else
    break;
  }
 }

 if (gain != orig_gain) {
  v4l2_ctrl_s_ctrl(gspca_dev->gain, gain);
  retval = 1;
 }
 if (exposure != orig_exposure) {
  v4l2_ctrl_s_ctrl(gspca_dev->exposure, exposure);
  retval = 1;
 }

 if (retval)
  gspca_dbg(gspca_dev, D_FRAM, "autogain: changed gain: %d, expo: %d\n",
     gain, exposure);
 return retval;
}
