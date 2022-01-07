
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_frame_size_enum {int max_height; int max_width; int which; int index; int code; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_4__ {int height; int width; } ;
struct v4l2_frmsizeenum {TYPE_2__ discrete; int type; int pixel_format; int index; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int mbus_code; } ;
struct ceu_subdev {TYPE_1__ mbus_fmt; struct v4l2_subdev* v4l2_sd; } ;
struct ceu_fmt {int dummy; } ;
struct ceu_device {struct ceu_subdev* sd; } ;


 int CEU_H_MAX (int ) ;
 int CEU_W_MAX (int ) ;
 int EINVAL ;
 int V4L2_FRMSIZE_TYPE_DISCRETE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int enum_frame_size ;
 struct ceu_fmt* get_ceu_fmt_from_fourcc (int ) ;
 int pad ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int *,struct v4l2_subdev_frame_size_enum*) ;
 struct ceu_device* video_drvdata (struct file*) ;

__attribute__((used)) static int ceu_enum_framesizes(struct file *file, void *fh,
          struct v4l2_frmsizeenum *fsize)
{
 struct ceu_device *ceudev = video_drvdata(file);
 struct ceu_subdev *ceu_sd = ceudev->sd;
 const struct ceu_fmt *ceu_fmt;
 struct v4l2_subdev *v4l2_sd = ceu_sd->v4l2_sd;
 int ret;

 struct v4l2_subdev_frame_size_enum fse = {
  .code = ceu_sd->mbus_fmt.mbus_code,
  .index = fsize->index,
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };


 ceu_fmt = get_ceu_fmt_from_fourcc(fsize->pixel_format);
 if (!ceu_fmt)
  return -EINVAL;

 ret = v4l2_subdev_call(v4l2_sd, pad, enum_frame_size,
          ((void*)0), &fse);
 if (ret)
  return ret;

 fsize->type = V4L2_FRMSIZE_TYPE_DISCRETE;
 fsize->discrete.width = CEU_W_MAX(fse.max_width);
 fsize->discrete.height = CEU_H_MAX(fse.max_height);

 return 0;
}
