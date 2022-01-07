
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_frame_interval_enum {int interval; int code; int which; int height; int width; int index; } ;
struct v4l2_frmivalenum {int discrete; int type; int pixel_format; int height; int width; int index; } ;
struct file {int dummy; } ;
struct cal_fmt {int code; } ;
struct cal_ctx {int sensor; } ;


 int EINVAL ;
 int V4L2_FRMIVAL_TYPE_DISCRETE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int enum_frame_interval ;
 struct cal_fmt* find_format_by_pix (struct cal_ctx*,int ) ;
 int pad ;
 int v4l2_subdev_call (int ,int ,int ,int *,struct v4l2_subdev_frame_interval_enum*) ;
 struct cal_ctx* video_drvdata (struct file*) ;

__attribute__((used)) static int cal_enum_frameintervals(struct file *file, void *priv,
       struct v4l2_frmivalenum *fival)
{
 struct cal_ctx *ctx = video_drvdata(file);
 const struct cal_fmt *fmt;
 struct v4l2_subdev_frame_interval_enum fie = {
  .index = fival->index,
  .width = fival->width,
  .height = fival->height,
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 int ret;

 fmt = find_format_by_pix(ctx, fival->pixel_format);
 if (!fmt)
  return -EINVAL;

 fie.code = fmt->code;
 ret = v4l2_subdev_call(ctx->sensor, pad, enum_frame_interval,
          ((void*)0), &fie);
 if (ret)
  return ret;
 fival->type = V4L2_FRMIVAL_TYPE_DISCRETE;
 fival->discrete = fie.interval;

 return 0;
}
