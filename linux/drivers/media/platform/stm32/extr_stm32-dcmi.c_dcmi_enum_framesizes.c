
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_frame_size_enum {int max_height; int max_width; int code; int which; int index; } ;
struct TYPE_4__ {int height; int width; } ;
struct v4l2_frmsizeenum {TYPE_2__ discrete; int type; int pixel_format; int index; } ;
struct TYPE_3__ {int source; } ;
struct stm32_dcmi {TYPE_1__ entity; } ;
struct file {int dummy; } ;
struct dcmi_format {int mbus_code; } ;


 int EINVAL ;
 int V4L2_FRMSIZE_TYPE_DISCRETE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int enum_frame_size ;
 struct dcmi_format* find_format_by_fourcc (struct stm32_dcmi*,int ) ;
 int pad ;
 int v4l2_subdev_call (int ,int ,int ,int *,struct v4l2_subdev_frame_size_enum*) ;
 struct stm32_dcmi* video_drvdata (struct file*) ;

__attribute__((used)) static int dcmi_enum_framesizes(struct file *file, void *fh,
    struct v4l2_frmsizeenum *fsize)
{
 struct stm32_dcmi *dcmi = video_drvdata(file);
 const struct dcmi_format *sd_fmt;
 struct v4l2_subdev_frame_size_enum fse = {
  .index = fsize->index,
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 int ret;

 sd_fmt = find_format_by_fourcc(dcmi, fsize->pixel_format);
 if (!sd_fmt)
  return -EINVAL;

 fse.code = sd_fmt->mbus_code;

 ret = v4l2_subdev_call(dcmi->entity.source, pad, enum_frame_size,
          ((void*)0), &fse);
 if (ret)
  return ret;

 fsize->type = V4L2_FRMSIZE_TYPE_DISCRETE;
 fsize->discrete.width = fse.max_width;
 fsize->discrete.height = fse.max_height;

 return 0;
}
