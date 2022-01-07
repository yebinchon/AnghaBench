
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct ov13858 {int cur_mode; struct v4l2_subdev sd; } ;


 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int ov13858_update_pad_format (int ,struct v4l2_subdev_format*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int ov13858_do_get_pad_format(struct ov13858 *ov13858,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *fmt)
{
 struct v4l2_mbus_framefmt *framefmt;
 struct v4l2_subdev *sd = &ov13858->sd;

 if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
  framefmt = v4l2_subdev_get_try_format(sd, cfg, fmt->pad);
  fmt->format = *framefmt;
 } else {
  ov13858_update_pad_format(ov13858->cur_mode, fmt);
 }

 return 0;
}
