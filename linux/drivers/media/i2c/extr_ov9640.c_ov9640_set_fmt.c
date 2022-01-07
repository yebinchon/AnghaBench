
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_mbus_framefmt {int code; int colorspace; int field; int height; int width; } ;
struct v4l2_subdev_pad_config {struct v4l2_mbus_framefmt try_fmt; } ;
struct v4l2_subdev_format {scalar_t__ which; scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;



 int V4L2_COLORSPACE_JPEG ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 int ov9640_res_roundup (int *,int *) ;
 int ov9640_s_fmt (struct v4l2_subdev*,struct v4l2_mbus_framefmt*) ;

__attribute__((used)) static int ov9640_set_fmt(struct v4l2_subdev *sd,
  struct v4l2_subdev_pad_config *cfg,
  struct v4l2_subdev_format *format)
{
 struct v4l2_mbus_framefmt *mf = &format->format;

 if (format->pad)
  return -EINVAL;

 ov9640_res_roundup(&mf->width, &mf->height);

 mf->field = V4L2_FIELD_NONE;

 switch (mf->code) {
 case 130:
 case 129:
  mf->colorspace = V4L2_COLORSPACE_SRGB;
  break;
 default:
  mf->code = 128;

 case 128:
  mf->colorspace = V4L2_COLORSPACE_JPEG;
  break;
 }

 if (format->which == V4L2_SUBDEV_FORMAT_ACTIVE)
  return ov9640_s_fmt(sd, mf);

 cfg->try_fmt = *mf;

 return 0;
}
