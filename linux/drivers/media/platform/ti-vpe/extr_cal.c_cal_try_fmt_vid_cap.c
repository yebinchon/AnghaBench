
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct v4l2_subdev_frame_size_enum {scalar_t__ max_width; scalar_t__ max_height; scalar_t__ min_width; scalar_t__ min_height; scalar_t__ index; int which; int code; scalar_t__ pad; } ;
struct TYPE_6__ {scalar_t__ width; scalar_t__ height; int colorspace; int field; int pixelformat; } ;
struct TYPE_7__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct cal_fmt {int code; int fourcc; } ;
struct TYPE_8__ {scalar_t__ width; scalar_t__ height; int colorspace; int field; } ;
struct TYPE_9__ {TYPE_3__ pix; } ;
struct TYPE_10__ {TYPE_4__ fmt; } ;
struct cal_ctx {TYPE_5__ v_fmt; int sensor; struct cal_fmt** active_fmt; } ;


 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int cal_calc_format_size (struct cal_ctx*,struct cal_fmt const*,struct v4l2_format*) ;
 int ctx_dbg (int,struct cal_ctx*,char*,int ) ;
 int enum_frame_size ;
 struct cal_fmt* find_format_by_pix (struct cal_ctx*,int ) ;
 int pad ;
 int v4l2_subdev_call (int ,int ,int ,int *,struct v4l2_subdev_frame_size_enum*) ;
 struct cal_ctx* video_drvdata (struct file*) ;

__attribute__((used)) static int cal_try_fmt_vid_cap(struct file *file, void *priv,
          struct v4l2_format *f)
{
 struct cal_ctx *ctx = video_drvdata(file);
 const struct cal_fmt *fmt;
 struct v4l2_subdev_frame_size_enum fse;
 int ret, found;

 fmt = find_format_by_pix(ctx, f->fmt.pix.pixelformat);
 if (!fmt) {
  ctx_dbg(3, ctx, "Fourcc format (0x%08x) not found.\n",
   f->fmt.pix.pixelformat);


  fmt = ctx->active_fmt[0];
  f->fmt.pix.pixelformat = fmt->fourcc;
 }

 f->fmt.pix.field = ctx->v_fmt.fmt.pix.field;


 ret = 0;
 found = 0;
 fse.pad = 0;
 fse.code = fmt->code;
 fse.which = V4L2_SUBDEV_FORMAT_ACTIVE;
 for (fse.index = 0; ; fse.index++) {
  ret = v4l2_subdev_call(ctx->sensor, pad, enum_frame_size,
           ((void*)0), &fse);
  if (ret)
   break;

  if ((f->fmt.pix.width == fse.max_width) &&
      (f->fmt.pix.height == fse.max_height)) {
   found = 1;
   break;
  } else if ((f->fmt.pix.width >= fse.min_width) &&
    (f->fmt.pix.width <= fse.max_width) &&
    (f->fmt.pix.height >= fse.min_height) &&
    (f->fmt.pix.height <= fse.max_height)) {
   found = 1;
   break;
  }
 }

 if (!found) {

  f->fmt.pix.width = ctx->v_fmt.fmt.pix.width;
  f->fmt.pix.height = ctx->v_fmt.fmt.pix.height;
 }





 f->fmt.pix.colorspace = ctx->v_fmt.fmt.pix.colorspace;
 return cal_calc_format_size(ctx, fmt, f);
}
