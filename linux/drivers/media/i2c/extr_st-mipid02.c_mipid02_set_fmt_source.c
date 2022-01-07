
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {int code; } ;
struct v4l2_subdev_format {scalar_t__ which; TYPE_1__ format; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct mipid02_dev {TYPE_1__ fmt; } ;


 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int serial_to_parallel_code (int ) ;
 struct mipid02_dev* to_mipid02_dev (struct v4l2_subdev*) ;
 TYPE_1__* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static void mipid02_set_fmt_source(struct v4l2_subdev *sd,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_format *format)
{
 struct mipid02_dev *bridge = to_mipid02_dev(sd);


 format->format = bridge->fmt;

 format->format.code = serial_to_parallel_code(format->format.code);


 if (format->which != V4L2_SUBDEV_FORMAT_TRY)
  return;

 *v4l2_subdev_get_try_format(sd, cfg, format->pad) = format->format;
}
