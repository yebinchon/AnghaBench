
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int colorspace; int code; int field; int height; int width; } ;
struct v4l2_subdev_format {scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct ak881x {int lines; } ;


 int EINVAL ;
 int MEDIA_BUS_FMT_YUYV8_2X8 ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_INTERLACED ;
 struct ak881x* to_ak881x (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l_bound_align_image (int *,int ,int,int,int *,int ,int ,int,int ) ;

__attribute__((used)) static int ak881x_fill_fmt(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *mf = &format->format;
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ak881x *ak881x = to_ak881x(client);

 if (format->pad)
  return -EINVAL;

 v4l_bound_align_image(&mf->width, 0, 720, 2,
         &mf->height, 0, ak881x->lines, 1, 0);
 mf->field = V4L2_FIELD_INTERLACED;
 mf->code = MEDIA_BUS_FMT_YUYV8_2X8;
 mf->colorspace = V4L2_COLORSPACE_SMPTE170M;

 return 0;
}
