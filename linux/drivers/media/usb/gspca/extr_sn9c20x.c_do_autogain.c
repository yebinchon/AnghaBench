
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sd {TYPE_1__* gain; } ;
struct gspca_dev {int dummy; } ;
typedef scalar_t__ s32 ;
struct TYPE_3__ {scalar_t__ maximum; scalar_t__ minimum; } ;


 scalar_t__ MAX_AVG_LUM ;
 scalar_t__ MIN_AVG_LUM ;
 scalar_t__ v4l2_ctrl_g_ctrl (TYPE_1__*) ;
 int v4l2_ctrl_s_ctrl (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void do_autogain(struct gspca_dev *gspca_dev, u16 avg_lum)
{
 struct sd *sd = (struct sd *) gspca_dev;
 s32 cur_gain = v4l2_ctrl_g_ctrl(sd->gain);

 if (avg_lum < MIN_AVG_LUM && cur_gain < sd->gain->maximum)
  v4l2_ctrl_s_ctrl(sd->gain, cur_gain + 1);
 if (avg_lum > MAX_AVG_LUM && cur_gain > sd->gain->minimum)
  v4l2_ctrl_s_ctrl(sd->gain, cur_gain - 1);
}
