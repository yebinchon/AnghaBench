
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int colorspace; int code; int height; int width; int field; } ;
struct v4l2_subdev_format {scalar_t__ which; scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct s5k5baf_pixfmt {int colorspace; int code; } ;
struct TYPE_2__ {int height; int width; } ;
struct s5k5baf {size_t pixfmt; int lock; TYPE_1__ crop_source; } ;


 scalar_t__ PAD_CIS ;
 int V4L2_FIELD_NONE ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct s5k5baf_pixfmt* s5k5baf_formats ;
 int s5k5baf_try_cis_format (struct v4l2_mbus_framefmt*) ;
 struct s5k5baf* to_s5k5baf (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,scalar_t__) ;

__attribute__((used)) static int s5k5baf_get_fmt(struct v4l2_subdev *sd, struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 struct s5k5baf *state = to_s5k5baf(sd);
 const struct s5k5baf_pixfmt *pixfmt;
 struct v4l2_mbus_framefmt *mf;

 if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
  mf = v4l2_subdev_get_try_format(sd, cfg, fmt->pad);
  fmt->format = *mf;
  return 0;
 }

 mf = &fmt->format;
 if (fmt->pad == PAD_CIS) {
  s5k5baf_try_cis_format(mf);
  return 0;
 }
 mf->field = V4L2_FIELD_NONE;
 mutex_lock(&state->lock);
 pixfmt = &s5k5baf_formats[state->pixfmt];
 mf->width = state->crop_source.width;
 mf->height = state->crop_source.height;
 mf->code = pixfmt->code;
 mf->colorspace = pixfmt->colorspace;
 mutex_unlock(&state->lock);

 return 0;
}
