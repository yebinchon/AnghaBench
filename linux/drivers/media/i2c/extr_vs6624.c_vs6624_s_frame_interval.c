
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numerator; int denominator; } ;
struct vs6624 {TYPE_1__ frame_rate; } ;
struct v4l2_fract {int numerator; int denominator; } ;
struct v4l2_subdev_frame_interval {struct v4l2_fract interval; } ;
struct v4l2_subdev {int dummy; } ;


 int MAX_FRAME_RATE ;
 int VS6624_DISABLE_FR_DAMPER ;
 int VS6624_FR_DEN ;
 int VS6624_FR_NUM_LSB ;
 int VS6624_FR_NUM_MSB ;
 struct vs6624* to_vs6624 (struct v4l2_subdev*) ;
 int vs6624_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int vs6624_s_frame_interval(struct v4l2_subdev *sd,
       struct v4l2_subdev_frame_interval *ival)
{
 struct vs6624 *sensor = to_vs6624(sd);
 struct v4l2_fract *tpf = &ival->interval;


 if (tpf->numerator == 0 || tpf->denominator == 0
  || (tpf->denominator > tpf->numerator * MAX_FRAME_RATE)) {

  tpf->numerator = 1;
  tpf->denominator = MAX_FRAME_RATE;
 }
 sensor->frame_rate.numerator = tpf->denominator;
 sensor->frame_rate.denominator = tpf->numerator;
 vs6624_write(sd, VS6624_DISABLE_FR_DAMPER, 0x0);
 vs6624_write(sd, VS6624_FR_NUM_MSB,
   sensor->frame_rate.numerator >> 8);
 vs6624_write(sd, VS6624_FR_NUM_LSB,
   sensor->frame_rate.numerator & 0xFF);
 vs6624_write(sd, VS6624_FR_DEN,
   sensor->frame_rate.denominator & 0xFF);
 return 0;
}
