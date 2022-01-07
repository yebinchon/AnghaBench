
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {scalar_t__ autogain_ignore_frames; TYPE_1__* brightness; int avg_lum; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {int val; } ;


 int PAC7302_EXPOSURE_KNEE ;
 int PAC7302_GAIN_KNEE ;
 scalar_t__ PAC_AUTOGAIN_IGNORE_FRAMES ;
 int atomic_read (int *) ;
 scalar_t__ gspca_expo_autogain (struct gspca_dev*,int,int,int const,int ,int ) ;

__attribute__((used)) static void do_autogain(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int avg_lum = atomic_read(&sd->avg_lum);
 int desired_lum;
 const int deadzone = 30;

 if (sd->autogain_ignore_frames < 0)
  return;

 if (sd->autogain_ignore_frames > 0) {
  sd->autogain_ignore_frames--;
 } else {
  desired_lum = 270 + sd->brightness->val;

  if (gspca_expo_autogain(gspca_dev, avg_lum, desired_lum,
     deadzone, PAC7302_GAIN_KNEE,
     PAC7302_EXPOSURE_KNEE))
   sd->autogain_ignore_frames =
      PAC_AUTOGAIN_IGNORE_FRAMES;
 }
}
