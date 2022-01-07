
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct v4l2_subdev_frame_size_enum {int max_height; int max_width; int code; int which; int index; } ;
struct TYPE_12__ {int height; int width; } ;
struct v4l2_frmsizeenum {scalar_t__ pixel_format; TYPE_5__ discrete; int type; int index; } ;
struct TYPE_11__ {TYPE_3__* sd_format; } ;
struct isc_device {int num_user_formats; TYPE_4__ config; TYPE_2__* current_subdev; TYPE_1__** user_formats; } ;
struct file {int dummy; } ;
struct TYPE_13__ {scalar_t__ fourcc; } ;
struct TYPE_10__ {int mbus_code; } ;
struct TYPE_9__ {int sd; } ;
struct TYPE_8__ {scalar_t__ fourcc; } ;


 int ARRAY_SIZE (TYPE_6__*) ;
 int EINVAL ;
 int V4L2_FRMSIZE_TYPE_DISCRETE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 TYPE_6__* controller_formats ;
 int enum_frame_size ;
 int pad ;
 int v4l2_subdev_call (int ,int ,int ,int *,struct v4l2_subdev_frame_size_enum*) ;
 struct isc_device* video_drvdata (struct file*) ;

__attribute__((used)) static int isc_enum_framesizes(struct file *file, void *fh,
          struct v4l2_frmsizeenum *fsize)
{
 struct isc_device *isc = video_drvdata(file);
 struct v4l2_subdev_frame_size_enum fse = {
  .index = fsize->index,
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 int ret = -EINVAL;
 int i;

 for (i = 0; i < isc->num_user_formats; i++)
  if (isc->user_formats[i]->fourcc == fsize->pixel_format)
   ret = 0;

 for (i = 0; i < ARRAY_SIZE(controller_formats); i++)
  if (controller_formats[i].fourcc == fsize->pixel_format)
   ret = 0;

 if (ret)
  return ret;

 ret = v4l2_subdev_call(isc->current_subdev->sd, pad, enum_frame_size,
          ((void*)0), &fse);
 if (ret)
  return ret;

 fse.code = isc->config.sd_format->mbus_code;

 fsize->type = V4L2_FRMSIZE_TYPE_DISCRETE;
 fsize->discrete.width = fse.max_width;
 fsize->discrete.height = fse.max_height;

 return 0;
}
