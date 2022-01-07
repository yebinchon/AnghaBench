
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_frame_interval_enum {int interval; int which; int height; int width; int index; int code; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_frmivalenum {int discrete; int type; int pixel_format; int height; int width; int index; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int mbus_code; } ;
struct ceu_subdev {TYPE_1__ mbus_fmt; struct v4l2_subdev* v4l2_sd; } ;
struct ceu_fmt {int dummy; } ;
struct ceu_device {struct ceu_subdev* sd; } ;


 int EINVAL ;
 int V4L2_FRMIVAL_TYPE_DISCRETE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int enum_frame_interval ;
 struct ceu_fmt* get_ceu_fmt_from_fourcc (int ) ;
 int pad ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int *,struct v4l2_subdev_frame_interval_enum*) ;
 struct ceu_device* video_drvdata (struct file*) ;

__attribute__((used)) static int ceu_enum_frameintervals(struct file *file, void *fh,
       struct v4l2_frmivalenum *fival)
{
 struct ceu_device *ceudev = video_drvdata(file);
 struct ceu_subdev *ceu_sd = ceudev->sd;
 const struct ceu_fmt *ceu_fmt;
 struct v4l2_subdev *v4l2_sd = ceu_sd->v4l2_sd;
 int ret;

 struct v4l2_subdev_frame_interval_enum fie = {
  .code = ceu_sd->mbus_fmt.mbus_code,
  .index = fival->index,
  .width = fival->width,
  .height = fival->height,
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };


 ceu_fmt = get_ceu_fmt_from_fourcc(fival->pixel_format);
 if (!ceu_fmt)
  return -EINVAL;

 ret = v4l2_subdev_call(v4l2_sd, pad, enum_frame_interval, ((void*)0),
          &fie);
 if (ret)
  return ret;

 fival->type = V4L2_FRMIVAL_TYPE_DISCRETE;
 fival->discrete = fie.interval;

 return 0;
}
