
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_frame_size_enum {int max_height; int max_width; int code; int which; int index; } ;
struct TYPE_4__ {int height; int width; } ;
struct v4l2_frmsizeenum {TYPE_2__ discrete; int type; int pixel_format; int index; } ;
struct isi_format {int mbus_code; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int subdev; } ;
struct atmel_isi {TYPE_1__ entity; } ;


 int EINVAL ;
 int V4L2_FRMSIZE_TYPE_DISCRETE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int enum_frame_size ;
 struct isi_format* find_format_by_fourcc (struct atmel_isi*,int ) ;
 int pad ;
 int v4l2_subdev_call (int ,int ,int ,int *,struct v4l2_subdev_frame_size_enum*) ;
 struct atmel_isi* video_drvdata (struct file*) ;

__attribute__((used)) static int isi_enum_framesizes(struct file *file, void *fh,
          struct v4l2_frmsizeenum *fsize)
{
 struct atmel_isi *isi = video_drvdata(file);
 const struct isi_format *isi_fmt;
 struct v4l2_subdev_frame_size_enum fse = {
  .index = fsize->index,
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 int ret;

 isi_fmt = find_format_by_fourcc(isi, fsize->pixel_format);
 if (!isi_fmt)
  return -EINVAL;

 fse.code = isi_fmt->mbus_code;

 ret = v4l2_subdev_call(isi->entity.subdev, pad, enum_frame_size,
          ((void*)0), &fse);
 if (ret)
  return ret;

 fsize->type = V4L2_FRMSIZE_TYPE_DISCRETE;
 fsize->discrete.width = fse.max_width;
 fsize->discrete.height = fse.max_height;

 return 0;
}
