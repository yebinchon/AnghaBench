
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sd {int exposure_step; int older_step; int old_step; TYPE_1__* exposure; } ;
struct gspca_dev {int dummy; } ;
typedef scalar_t__ s32 ;
typedef scalar_t__ s16 ;
struct TYPE_3__ {scalar_t__ maximum; scalar_t__ minimum; } ;


 scalar_t__ MAX_AVG_LUM ;
 scalar_t__ MIN_AVG_LUM ;
 scalar_t__ v4l2_ctrl_g_ctrl (TYPE_1__*) ;
 int v4l2_ctrl_s_ctrl (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void do_autoexposure(struct gspca_dev *gspca_dev, u16 avg_lum)
{
 struct sd *sd = (struct sd *) gspca_dev;
 s32 cur_exp = v4l2_ctrl_g_ctrl(sd->exposure);
 s32 max = sd->exposure->maximum - sd->exposure_step;
 s32 min = sd->exposure->minimum + sd->exposure_step;
 s16 new_exp;






 if (avg_lum < MIN_AVG_LUM) {
  if (cur_exp > max)
   return;

  new_exp = cur_exp + sd->exposure_step;
  if (new_exp > max)
   new_exp = max;
  if (new_exp < min)
   new_exp = min;
  v4l2_ctrl_s_ctrl(sd->exposure, new_exp);

  sd->older_step = sd->old_step;
  sd->old_step = 1;

  if (sd->old_step ^ sd->older_step)
   sd->exposure_step /= 2;
  else
   sd->exposure_step += 2;
 }
 if (avg_lum > MAX_AVG_LUM) {
  if (cur_exp < min)
   return;
  new_exp = cur_exp - sd->exposure_step;
  if (new_exp > max)
   new_exp = max;
  if (new_exp < min)
   new_exp = min;
  v4l2_ctrl_s_ctrl(sd->exposure, new_exp);
  sd->older_step = sd->old_step;
  sd->old_step = 0;

  if (sd->old_step ^ sd->older_step)
   sd->exposure_step /= 2;
  else
   sd->exposure_step += 2;
 }
}
