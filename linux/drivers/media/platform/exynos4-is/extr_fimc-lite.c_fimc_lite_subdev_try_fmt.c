
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int height; int width; int colorspace; int code; int field; } ;
struct v4l2_subdev_format {scalar_t__ pad; scalar_t__ which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_rect {int height; int width; } ;
struct flite_frame {struct v4l2_rect rect; TYPE_1__* fmt; } ;
struct flite_drvdata {int max_height; int out_width_align; int max_width; } ;
struct fimc_lite {int subdev; struct flite_frame inp_frame; struct flite_drvdata* dd; } ;
struct fimc_fmt {int mbus_code; int colorspace; } ;
struct TYPE_2__ {int colorspace; int mbus_code; } ;


 scalar_t__ FLITE_SD_PAD_SINK ;
 int V4L2_FIELD_NONE ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 scalar_t__ WARN_ON (int) ;
 int debug ;
 scalar_t__ ffs (int ) ;
 struct fimc_fmt* fimc_lite_find_format (int *,int *,int ,int ) ;
 int v4l2_dbg (int,int ,int *,char*,int ,int ,int ,int ) ;
 struct v4l2_rect* v4l2_subdev_get_try_crop (int *,struct v4l2_subdev_pad_config*,scalar_t__) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (int *,struct v4l2_subdev_pad_config*,scalar_t__) ;
 int v4l_bound_align_image (int *,int,int ,scalar_t__,int *,int ,int ,int ,int ) ;

__attribute__((used)) static const struct fimc_fmt *fimc_lite_subdev_try_fmt(struct fimc_lite *fimc,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *format)
{
 struct flite_drvdata *dd = fimc->dd;
 struct v4l2_mbus_framefmt *mf = &format->format;
 const struct fimc_fmt *fmt = ((void*)0);

 if (format->pad == FLITE_SD_PAD_SINK) {
  v4l_bound_align_image(&mf->width, 8, dd->max_width,
    ffs(dd->out_width_align) - 1,
    &mf->height, 0, dd->max_height, 0, 0);

  fmt = fimc_lite_find_format(((void*)0), &mf->code, 0, 0);
  if (WARN_ON(!fmt))
   return ((void*)0);

  mf->colorspace = fmt->colorspace;
  mf->code = fmt->mbus_code;
 } else {
  struct flite_frame *sink = &fimc->inp_frame;
  struct v4l2_mbus_framefmt *sink_fmt;
  struct v4l2_rect *rect;

  if (format->which == V4L2_SUBDEV_FORMAT_TRY) {
   sink_fmt = v4l2_subdev_get_try_format(&fimc->subdev, cfg,
      FLITE_SD_PAD_SINK);

   mf->code = sink_fmt->code;
   mf->colorspace = sink_fmt->colorspace;

   rect = v4l2_subdev_get_try_crop(&fimc->subdev, cfg,
      FLITE_SD_PAD_SINK);
  } else {
   mf->code = sink->fmt->mbus_code;
   mf->colorspace = sink->fmt->colorspace;
   rect = &sink->rect;
  }


  mf->width = rect->width;
  mf->height = rect->height;
 }

 mf->field = V4L2_FIELD_NONE;

 v4l2_dbg(1, debug, &fimc->subdev, "code: %#x (%d), %dx%d\n",
   mf->code, mf->colorspace, mf->width, mf->height);

 return fmt;
}
