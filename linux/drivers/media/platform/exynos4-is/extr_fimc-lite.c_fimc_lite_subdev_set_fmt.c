
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int height; int width; int code; } ;
struct v4l2_subdev_format {unsigned int pad; scalar_t__ which; struct v4l2_mbus_framefmt format; } ;
struct TYPE_3__ {scalar_t__ stream_count; } ;
struct v4l2_subdev {TYPE_1__ entity; } ;
struct TYPE_4__ {scalar_t__ top; scalar_t__ left; int height; int width; } ;
struct flite_frame {int f_height; int f_width; TYPE_2__ rect; struct fimc_fmt const* fmt; } ;
struct fimc_lite {int lock; int vb_queue; int out_path; struct flite_frame out_frame; struct flite_frame inp_frame; } ;
struct fimc_fmt {int dummy; } ;


 int EBUSY ;
 scalar_t__ FIMC_IO_DMA ;
 scalar_t__ FIMC_IO_ISP ;
 scalar_t__ FLITE_SD_PAD_SINK ;
 unsigned int FLITE_SD_PAD_SOURCE_DMA ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 struct v4l2_mbus_framefmt* __fimc_lite_subdev_get_try_fmt (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,unsigned int) ;
 scalar_t__ atomic_read (int *) ;
 int debug ;
 struct fimc_fmt* fimc_lite_subdev_try_fmt (struct fimc_lite*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,unsigned int,int ,int ,int ) ;
 struct fimc_lite* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 scalar_t__ vb2_is_busy (int *) ;

__attribute__((used)) static int fimc_lite_subdev_set_fmt(struct v4l2_subdev *sd,
        struct v4l2_subdev_pad_config *cfg,
        struct v4l2_subdev_format *fmt)
{
 struct fimc_lite *fimc = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *mf = &fmt->format;
 struct flite_frame *sink = &fimc->inp_frame;
 struct flite_frame *source = &fimc->out_frame;
 const struct fimc_fmt *ffmt;

 v4l2_dbg(1, debug, sd, "pad%d: code: 0x%x, %dx%d\n",
   fmt->pad, mf->code, mf->width, mf->height);

 mutex_lock(&fimc->lock);

 if ((atomic_read(&fimc->out_path) == FIMC_IO_ISP &&
     sd->entity.stream_count > 0) ||
     (atomic_read(&fimc->out_path) == FIMC_IO_DMA &&
     vb2_is_busy(&fimc->vb_queue))) {
  mutex_unlock(&fimc->lock);
  return -EBUSY;
 }

 ffmt = fimc_lite_subdev_try_fmt(fimc, cfg, fmt);

 if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {
  struct v4l2_mbus_framefmt *src_fmt;

  mf = __fimc_lite_subdev_get_try_fmt(sd, cfg, fmt->pad);
  *mf = fmt->format;

  if (fmt->pad == FLITE_SD_PAD_SINK) {
   unsigned int pad = FLITE_SD_PAD_SOURCE_DMA;
   src_fmt = __fimc_lite_subdev_get_try_fmt(sd, cfg, pad);
   *src_fmt = *mf;
  }

  mutex_unlock(&fimc->lock);
  return 0;
 }

 if (fmt->pad == FLITE_SD_PAD_SINK) {
  sink->f_width = mf->width;
  sink->f_height = mf->height;
  sink->fmt = ffmt;

  sink->rect.width = mf->width;
  sink->rect.height = mf->height;
  sink->rect.left = 0;
  sink->rect.top = 0;

  source->rect = sink->rect;
  source->f_width = mf->width;
  source->f_height = mf->height;
 }

 mutex_unlock(&fimc->lock);
 return 0;
}
