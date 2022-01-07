
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {int code; int colorspace; int field; int height; int width; } ;
struct v4l2_subdev_pad_config {struct v4l2_mbus_framefmt try_fmt; } ;
struct v4l2_subdev_format {scalar_t__ which; scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct ov6650 {int rect; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int H_CIF ;







 int V4L2_COLORSPACE_JPEG ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 int W_CIF ;
 scalar_t__ is_unscaled_ok (int ,int ,int *) ;
 int ov6650_s_fmt (struct v4l2_subdev*,struct v4l2_mbus_framefmt*) ;
 struct ov6650* to_ov6650 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l_bound_align_image (int *,int,int ,int,int *,int,int ,int,int ) ;

__attribute__((used)) static int ov6650_set_fmt(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *mf = &format->format;
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ov6650 *priv = to_ov6650(client);

 if (format->pad)
  return -EINVAL;

 if (is_unscaled_ok(mf->width, mf->height, &priv->rect))
  v4l_bound_align_image(&mf->width, 2, W_CIF, 1,
    &mf->height, 2, H_CIF, 1, 0);

 mf->field = V4L2_FIELD_NONE;

 switch (mf->code) {
 case 131:
  mf->code = 130;

 case 130:
 case 128:
 case 129:
 case 132:
 case 133:
  mf->colorspace = V4L2_COLORSPACE_JPEG;
  break;
 default:
  mf->code = 134;

 case 134:
  mf->colorspace = V4L2_COLORSPACE_SRGB;
  break;
 }

 if (format->which == V4L2_SUBDEV_FORMAT_ACTIVE)
  return ov6650_s_fmt(sd, mf);
 cfg->try_fmt = *mf;

 return 0;
}
