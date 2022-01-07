
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fract {int numerator; int denominator; } ;
struct v4l2_subdev_frame_interval {struct v4l2_fract interval; } ;
struct v4l2_subdev {int dummy; } ;



__attribute__((used)) static int ov7740_g_frame_interval(struct v4l2_subdev *sd,
       struct v4l2_subdev_frame_interval *ival)
{
 struct v4l2_fract *tpf = &ival->interval;


 tpf->numerator = 1;
 tpf->denominator = 60;

 return 0;
}
