
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_sliced_vbi_format {int dummy; } ;


 int saa711x_set_lcr (struct v4l2_subdev*,struct v4l2_sliced_vbi_format*) ;

__attribute__((used)) static int saa711x_s_sliced_fmt(struct v4l2_subdev *sd, struct v4l2_sliced_vbi_format *fmt)
{
 saa711x_set_lcr(sd, fmt);
 return 0;
}
