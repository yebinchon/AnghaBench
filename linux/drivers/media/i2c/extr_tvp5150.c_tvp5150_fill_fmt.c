
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int height; int width; int colorspace; int field; int code; } ;
struct v4l2_subdev_format {scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dev; } ;
struct TYPE_2__ {int height; int width; } ;
struct tvp5150 {TYPE_1__ rect; } ;


 int EINVAL ;
 int TVP5150_COLORSPACE ;
 int TVP5150_FIELD ;
 int TVP5150_MBUS_FMT ;
 scalar_t__ TVP5150_PAD_VID_OUT ;
 int debug ;
 int dev_dbg_lvl (int ,int,int ,char*,int ,int) ;
 struct tvp5150* to_tvp5150 (struct v4l2_subdev*) ;

__attribute__((used)) static int tvp5150_fill_fmt(struct v4l2_subdev *sd,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *f;
 struct tvp5150 *decoder = to_tvp5150(sd);

 if (!format || (format->pad != TVP5150_PAD_VID_OUT))
  return -EINVAL;

 f = &format->format;

 f->width = decoder->rect.width;
 f->height = decoder->rect.height / 2;

 f->code = TVP5150_MBUS_FMT;
 f->field = TVP5150_FIELD;
 f->colorspace = TVP5150_COLORSPACE;

 dev_dbg_lvl(sd->dev, 1, debug, "width = %d, height = %d\n", f->width,
      f->height);
 return 0;
}
