
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_frame_interval_enum {int interval; int code; int which; int height; int width; int index; } ;
struct v4l2_frmivalenum {int discrete; int type; int pixel_format; int height; int width; int index; } ;
struct TYPE_2__ {int source; } ;
struct stm32_dcmi {TYPE_1__ entity; } ;
struct file {int dummy; } ;
struct dcmi_format {int mbus_code; } ;


 int EINVAL ;
 int V4L2_FRMIVAL_TYPE_DISCRETE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int enum_frame_interval ;
 struct dcmi_format* find_format_by_fourcc (struct stm32_dcmi*,int ) ;
 int pad ;
 int v4l2_subdev_call (int ,int ,int ,int *,struct v4l2_subdev_frame_interval_enum*) ;
 struct stm32_dcmi* video_drvdata (struct file*) ;

__attribute__((used)) static int dcmi_enum_frameintervals(struct file *file, void *fh,
        struct v4l2_frmivalenum *fival)
{
 struct stm32_dcmi *dcmi = video_drvdata(file);
 const struct dcmi_format *sd_fmt;
 struct v4l2_subdev_frame_interval_enum fie = {
  .index = fival->index,
  .width = fival->width,
  .height = fival->height,
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 int ret;

 sd_fmt = find_format_by_fourcc(dcmi, fival->pixel_format);
 if (!sd_fmt)
  return -EINVAL;

 fie.code = sd_fmt->mbus_code;

 ret = v4l2_subdev_call(dcmi->entity.source, pad,
          enum_frame_interval, ((void*)0), &fie);
 if (ret)
  return ret;

 fival->type = V4L2_FRMIVAL_TYPE_DISCRETE;
 fival->discrete = fie.interval;

 return 0;
}
