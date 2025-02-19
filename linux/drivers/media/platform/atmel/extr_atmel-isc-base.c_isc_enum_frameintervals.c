
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct v4l2_subdev_frame_interval_enum {int interval; int code; int which; int height; int width; int index; } ;
struct v4l2_frmivalenum {scalar_t__ pixel_format; int discrete; int type; int height; int width; int index; } ;
struct TYPE_10__ {TYPE_3__* sd_format; } ;
struct isc_device {unsigned int num_user_formats; TYPE_4__ config; TYPE_2__* current_subdev; TYPE_1__** user_formats; } ;
struct file {int dummy; } ;
struct TYPE_11__ {scalar_t__ fourcc; } ;
struct TYPE_9__ {int mbus_code; } ;
struct TYPE_8__ {int sd; } ;
struct TYPE_7__ {scalar_t__ fourcc; } ;


 unsigned int ARRAY_SIZE (TYPE_5__*) ;
 int EINVAL ;
 int V4L2_FRMIVAL_TYPE_DISCRETE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 TYPE_5__* controller_formats ;
 int enum_frame_interval ;
 int pad ;
 int v4l2_subdev_call (int ,int ,int ,int *,struct v4l2_subdev_frame_interval_enum*) ;
 struct isc_device* video_drvdata (struct file*) ;

__attribute__((used)) static int isc_enum_frameintervals(struct file *file, void *fh,
        struct v4l2_frmivalenum *fival)
{
 struct isc_device *isc = video_drvdata(file);
 struct v4l2_subdev_frame_interval_enum fie = {
  .index = fival->index,
  .width = fival->width,
  .height = fival->height,
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 int ret = -EINVAL;
 unsigned int i;

 for (i = 0; i < isc->num_user_formats; i++)
  if (isc->user_formats[i]->fourcc == fival->pixel_format)
   ret = 0;

 for (i = 0; i < ARRAY_SIZE(controller_formats); i++)
  if (controller_formats[i].fourcc == fival->pixel_format)
   ret = 0;

 if (ret)
  return ret;

 ret = v4l2_subdev_call(isc->current_subdev->sd, pad,
          enum_frame_interval, ((void*)0), &fie);
 if (ret)
  return ret;

 fie.code = isc->config.sd_format->mbus_code;
 fival->type = V4L2_FRMIVAL_TYPE_DISCRETE;
 fival->discrete = fie.interval;

 return 0;
}
