
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fract {int numerator; int denominator; } ;
struct v4l2_subdev_frame_interval {struct v4l2_fract interval; } ;
struct v4l2_subdev {int dummy; } ;
struct ov772x_priv {int fps; } ;


 struct ov772x_priv* to_ov772x (struct v4l2_subdev*) ;

__attribute__((used)) static int ov772x_g_frame_interval(struct v4l2_subdev *sd,
       struct v4l2_subdev_frame_interval *ival)
{
 struct ov772x_priv *priv = to_ov772x(sd);
 struct v4l2_fract *tpf = &ival->interval;

 tpf->numerator = 1;
 tpf->denominator = priv->fps;

 return 0;
}
