
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int numerator; int denominator; } ;
struct vs6624 {TYPE_2__ frame_rate; } ;
struct TYPE_3__ {int denominator; int numerator; } ;
struct v4l2_subdev_frame_interval {TYPE_1__ interval; } ;
struct v4l2_subdev {int dummy; } ;


 struct vs6624* to_vs6624 (struct v4l2_subdev*) ;

__attribute__((used)) static int vs6624_g_frame_interval(struct v4l2_subdev *sd,
       struct v4l2_subdev_frame_interval *ival)
{
 struct vs6624 *sensor = to_vs6624(sd);

 ival->interval.numerator = sensor->frame_rate.denominator;
 ival->interval.denominator = sensor->frame_rate.numerator;
 return 0;
}
