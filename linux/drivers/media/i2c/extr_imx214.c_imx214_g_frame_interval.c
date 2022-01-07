
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numerator; int denominator; } ;
struct v4l2_subdev_frame_interval {TYPE_1__ interval; scalar_t__ pad; } ;
struct v4l2_subdev {int dummy; } ;


 int IMX214_FPS ;

__attribute__((used)) static int imx214_g_frame_interval(struct v4l2_subdev *subdev,
       struct v4l2_subdev_frame_interval *fival)
{
 fival->pad = 0;
 fival->interval.numerator = 1;
 fival->interval.denominator = IMX214_FPS;

 return 0;
}
