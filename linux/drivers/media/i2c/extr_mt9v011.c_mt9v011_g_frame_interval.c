
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int denominator; int numerator; } ;
struct v4l2_subdev_frame_interval {TYPE_1__ interval; } ;
struct v4l2_subdev {int dummy; } ;


 int calc_fps (struct v4l2_subdev*,int *,int *) ;

__attribute__((used)) static int mt9v011_g_frame_interval(struct v4l2_subdev *sd,
        struct v4l2_subdev_frame_interval *ival)
{
 calc_fps(sd,
   &ival->interval.numerator,
   &ival->interval.denominator);

 return 0;
}
