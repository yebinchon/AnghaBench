
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int dummy; } ;
struct v4l2_subdev {int dummy; } ;


 int tvp7002_get_pad_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;

__attribute__((used)) static int
tvp7002_set_pad_format(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *fmt)
{
 return tvp7002_get_pad_format(sd, cfg, fmt);
}
