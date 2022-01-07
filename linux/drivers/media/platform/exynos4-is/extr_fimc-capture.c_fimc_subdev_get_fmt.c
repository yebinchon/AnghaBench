
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int colorspace; int height; int width; int code; } ;
struct v4l2_subdev_format {scalar_t__ which; int pad; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int dummy; } ;
struct fimc_frame {int height; int width; TYPE_1__* fmt; } ;
struct TYPE_4__ {struct v4l2_mbus_framefmt ci_fmt; struct v4l2_mbus_framefmt wb_fmt; struct fimc_ctx* ctx; } ;
struct fimc_dev {int lock; TYPE_2__ vid_cap; } ;
struct fimc_ctx {struct fimc_frame s_frame; } ;
struct TYPE_3__ {int mbus_code; } ;





 int V4L2_COLORSPACE_JPEG ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int WARN_ON (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fimc_dev* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int) ;

__attribute__((used)) static int fimc_subdev_get_fmt(struct v4l2_subdev *sd,
          struct v4l2_subdev_pad_config *cfg,
          struct v4l2_subdev_format *fmt)
{
 struct fimc_dev *fimc = v4l2_get_subdevdata(sd);
 struct fimc_ctx *ctx = fimc->vid_cap.ctx;
 struct fimc_frame *ff = &ctx->s_frame;
 struct v4l2_mbus_framefmt *mf;

 if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
  mf = v4l2_subdev_get_try_format(sd, cfg, fmt->pad);
  fmt->format = *mf;
  return 0;
 }

 mf = &fmt->format;
 mutex_lock(&fimc->lock);

 switch (fmt->pad) {
 case 128:
  if (!WARN_ON(ff->fmt == ((void*)0)))
   mf->code = ff->fmt->mbus_code;

  mf->width = ff->width;
  mf->height = ff->height;
  break;
 case 129:
  *mf = fimc->vid_cap.wb_fmt;
  break;
 case 130:
 default:
  *mf = fimc->vid_cap.ci_fmt;
  break;
 }

 mutex_unlock(&fimc->lock);
 mf->colorspace = V4L2_COLORSPACE_JPEG;

 return 0;
}
