
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_frame_size_enum {scalar_t__ min_width; scalar_t__ max_width; scalar_t__ min_height; scalar_t__ max_height; int code; int which; int index; } ;
struct TYPE_4__ {scalar_t__ min_width; scalar_t__ max_width; scalar_t__ min_height; scalar_t__ max_height; int step_width; int step_height; } ;
struct TYPE_3__ {scalar_t__ width; scalar_t__ height; } ;
struct v4l2_frmsizeenum {scalar_t__ pixel_format; TYPE_2__ stepwise; int type; TYPE_1__ discrete; int index; } ;
struct mcam_format_struct {scalar_t__ pixelformat; int mbus_code; } ;
struct mcam_camera {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_FRMSIZE_TYPE_CONTINUOUS ;
 int V4L2_FRMSIZE_TYPE_DISCRETE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int enum_frame_size ;
 struct mcam_format_struct* mcam_find_format (scalar_t__) ;
 int pad ;
 int sensor_call (struct mcam_camera*,int ,int ,int *,struct v4l2_subdev_frame_size_enum*) ;
 struct mcam_camera* video_drvdata (struct file*) ;

__attribute__((used)) static int mcam_vidioc_enum_framesizes(struct file *filp, void *priv,
  struct v4l2_frmsizeenum *sizes)
{
 struct mcam_camera *cam = video_drvdata(filp);
 struct mcam_format_struct *f;
 struct v4l2_subdev_frame_size_enum fse = {
  .index = sizes->index,
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 int ret;

 f = mcam_find_format(sizes->pixel_format);
 if (f->pixelformat != sizes->pixel_format)
  return -EINVAL;
 fse.code = f->mbus_code;
 ret = sensor_call(cam, pad, enum_frame_size, ((void*)0), &fse);
 if (ret)
  return ret;
 if (fse.min_width == fse.max_width &&
     fse.min_height == fse.max_height) {
  sizes->type = V4L2_FRMSIZE_TYPE_DISCRETE;
  sizes->discrete.width = fse.min_width;
  sizes->discrete.height = fse.min_height;
  return 0;
 }
 sizes->type = V4L2_FRMSIZE_TYPE_CONTINUOUS;
 sizes->stepwise.min_width = fse.min_width;
 sizes->stepwise.max_width = fse.max_width;
 sizes->stepwise.min_height = fse.min_height;
 sizes->stepwise.max_height = fse.max_height;
 sizes->stepwise.step_width = 1;
 sizes->stepwise.step_height = 1;
 return 0;
}
