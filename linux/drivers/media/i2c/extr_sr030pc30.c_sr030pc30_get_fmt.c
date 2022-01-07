
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int field; int colorspace; int code; int height; int width; } ;
struct v4l2_subdev_format {struct v4l2_mbus_framefmt format; scalar_t__ pad; } ;
struct v4l2_subdev {int dummy; } ;
struct sr030pc30_info {TYPE_2__* curr_fmt; TYPE_1__* curr_win; } ;
struct TYPE_4__ {int colorspace; int code; } ;
struct TYPE_3__ {int height; int width; } ;


 int EINVAL ;
 int V4L2_FIELD_NONE ;
 struct sr030pc30_info* to_sr030pc30 (struct v4l2_subdev*) ;

__attribute__((used)) static int sr030pc30_get_fmt(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *mf;
 struct sr030pc30_info *info = to_sr030pc30(sd);

 if (!format || format->pad)
  return -EINVAL;

 mf = &format->format;

 if (!info->curr_win || !info->curr_fmt)
  return -EINVAL;

 mf->width = info->curr_win->width;
 mf->height = info->curr_win->height;
 mf->code = info->curr_fmt->code;
 mf->colorspace = info->curr_fmt->colorspace;
 mf->field = V4L2_FIELD_NONE;

 return 0;
}
