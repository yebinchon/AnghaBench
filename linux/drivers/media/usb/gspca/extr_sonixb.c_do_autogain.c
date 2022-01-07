
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sd {scalar_t__ autogain_ignore_frames; size_t sensor; int exposure_knee; TYPE_1__* brightness; int avg_lum; } ;
struct gspca_dev {TYPE_3__* gain; TYPE_2__* exposure; } ;
typedef int s32 ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {scalar_t__ maximum; } ;
struct TYPE_6__ {int maximum; } ;
struct TYPE_5__ {int val; } ;


 void* AUTOGAIN_IGNORE_FRAMES ;
 int F_SIF ;
 int atomic_read (int *) ;
 scalar_t__ gspca_coarse_grained_expo_autogain (struct gspca_dev*,int,int,int) ;
 scalar_t__ gspca_expo_autogain (struct gspca_dev*,int,int,int,int,int ) ;
 TYPE_4__* sensor_data ;

__attribute__((used)) static void do_autogain(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int deadzone, desired_avg_lum, avg_lum;

 avg_lum = atomic_read(&sd->avg_lum);
 if (avg_lum == -1)
  return;

 if (sd->autogain_ignore_frames > 0) {
  sd->autogain_ignore_frames--;
  return;
 }



 if (sensor_data[sd->sensor].flags & F_SIF) {
  deadzone = 500;

  desired_avg_lum = 5000;
 } else {
  deadzone = 1500;
  desired_avg_lum = 13000;
 }

 if (sd->brightness)
  desired_avg_lum = sd->brightness->val * desired_avg_lum / 127;

 if (gspca_dev->exposure->maximum < 500) {
  if (gspca_coarse_grained_expo_autogain(gspca_dev, avg_lum,
    desired_avg_lum, deadzone))
   sd->autogain_ignore_frames = AUTOGAIN_IGNORE_FRAMES;
 } else {
  int gain_knee = (s32)gspca_dev->gain->maximum * 9 / 10;
  if (gspca_expo_autogain(gspca_dev, avg_lum, desired_avg_lum,
    deadzone, gain_knee, sd->exposure_knee))
   sd->autogain_ignore_frames = AUTOGAIN_IGNORE_FRAMES;
 }
}
