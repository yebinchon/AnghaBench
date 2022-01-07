
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int height; int width; int code; int colorspace; } ;
struct v4l2_subdev_format {scalar_t__ which; scalar_t__ pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_4__ {int height; int width; } ;
struct flite_frame {TYPE_2__ rect; int f_height; int f_width; TYPE_1__* fmt; } ;
struct fimc_lite {int lock; struct flite_frame inp_frame; } ;
struct TYPE_3__ {int mbus_code; int colorspace; } ;


 scalar_t__ FLITE_SD_PAD_SINK ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 struct v4l2_mbus_framefmt* __fimc_lite_subdev_get_try_fmt (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fimc_lite* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int fimc_lite_subdev_get_fmt(struct v4l2_subdev *sd,
        struct v4l2_subdev_pad_config *cfg,
        struct v4l2_subdev_format *fmt)
{
 struct fimc_lite *fimc = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *mf = &fmt->format;
 struct flite_frame *f = &fimc->inp_frame;

 if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
  mf = __fimc_lite_subdev_get_try_fmt(sd, cfg, fmt->pad);
  fmt->format = *mf;
  return 0;
 }

 mutex_lock(&fimc->lock);
 mf->colorspace = f->fmt->colorspace;
 mf->code = f->fmt->mbus_code;

 if (fmt->pad == FLITE_SD_PAD_SINK) {

  mf->width = f->f_width;
  mf->height = f->f_height;
 } else {

  mf->width = f->rect.width;
  mf->height = f->rect.height;
 }
 mutex_unlock(&fimc->lock);
 return 0;
}
