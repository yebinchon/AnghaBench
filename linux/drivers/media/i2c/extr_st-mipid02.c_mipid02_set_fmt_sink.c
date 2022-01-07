
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int code; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct mipid02_dev {struct v4l2_mbus_framefmt fmt; } ;


 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int get_fmt_code (int ) ;
 struct mipid02_dev* to_mipid02_dev (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static void mipid02_set_fmt_sink(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *format)
{
 struct mipid02_dev *bridge = to_mipid02_dev(sd);
 struct v4l2_mbus_framefmt *fmt;

 format->format.code = get_fmt_code(format->format.code);

 if (format->which == V4L2_SUBDEV_FORMAT_TRY)
  fmt = v4l2_subdev_get_try_format(sd, cfg, format->pad);
 else
  fmt = &bridge->fmt;

 *fmt = format->format;
}
