
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_fract {int numerator; int denominator; } ;



__attribute__((used)) static int adv748x_hdmi_g_pixelaspect(struct v4l2_subdev *sd,
          struct v4l2_fract *aspect)
{
 aspect->numerator = 1;
 aspect->denominator = 1;

 return 0;
}
