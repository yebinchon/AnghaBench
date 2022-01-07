
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_interval {int interval; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; int field; int colorspace; } ;
struct v4l2_subdev_format {scalar_t__ which; struct v4l2_mbus_framefmt format; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct ov965x_framesize {int dummy; } ;
struct ov965x {int apply_frame_fmt; int lock; int tslb_reg; struct v4l2_mbus_framefmt format; struct ov965x_framesize const* frame_size; scalar_t__ streaming; } ;
struct TYPE_3__ {scalar_t__ code; int tslb_reg; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int EBUSY ;
 int V4L2_COLORSPACE_JPEG ;
 int V4L2_FIELD_NONE ;
 scalar_t__ V4L2_SUBDEV_FORMAT_ACTIVE ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int __ov965x_set_frame_interval (struct ov965x*,struct v4l2_subdev_frame_interval*) ;
 int __ov965x_try_frame_size (struct v4l2_mbus_framefmt*,struct ov965x_framesize const**) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* ov965x_formats ;
 int ov965x_update_exposure_ctrl (struct ov965x*) ;
 struct ov965x* to_ov965x (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int ov965x_set_fmt(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 unsigned int index = ARRAY_SIZE(ov965x_formats);
 struct v4l2_mbus_framefmt *mf = &fmt->format;
 struct ov965x *ov965x = to_ov965x(sd);
 const struct ov965x_framesize *size = ((void*)0);
 int ret = 0;

 __ov965x_try_frame_size(mf, &size);

 while (--index)
  if (ov965x_formats[index].code == mf->code)
   break;

 mf->colorspace = V4L2_COLORSPACE_JPEG;
 mf->code = ov965x_formats[index].code;
 mf->field = V4L2_FIELD_NONE;

 mutex_lock(&ov965x->lock);

 if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
  if (cfg) {
   mf = v4l2_subdev_get_try_format(sd, cfg, fmt->pad);
   *mf = fmt->format;
  }
 } else {
  if (ov965x->streaming) {
   ret = -EBUSY;
  } else {
   ov965x->frame_size = size;
   ov965x->format = fmt->format;
   ov965x->tslb_reg = ov965x_formats[index].tslb_reg;
   ov965x->apply_frame_fmt = 1;
  }
 }

 if (!ret && fmt->which == V4L2_SUBDEV_FORMAT_ACTIVE) {
  struct v4l2_subdev_frame_interval fiv = {
   .interval = { 0, 1 }
  };

  __ov965x_set_frame_interval(ov965x, &fiv);
 }
 mutex_unlock(&ov965x->lock);

 if (!ret)
  ov965x_update_exposure_ctrl(ov965x);

 return ret;
}
