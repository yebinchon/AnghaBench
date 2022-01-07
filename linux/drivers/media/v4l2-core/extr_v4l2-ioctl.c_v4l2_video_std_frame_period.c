
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fract {int numerator; int denominator; } ;


 int V4L2_STD_525_60 ;

void v4l2_video_std_frame_period(int id, struct v4l2_fract *frameperiod)
{
 if (id & V4L2_STD_525_60) {
  frameperiod->numerator = 1001;
  frameperiod->denominator = 30000;
 } else {
  frameperiod->numerator = 1;
  frameperiod->denominator = 25;
 }
}
