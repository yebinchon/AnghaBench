
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct video_i2c_data {TYPE_3__* chip; } ;
struct TYPE_5__ {int height; int width; } ;
struct v4l2_frmsizeenum {scalar_t__ index; scalar_t__ pixel_format; TYPE_2__ discrete; int type; } ;
struct v4l2_frmsize_discrete {int height; int width; } ;
struct file {int dummy; } ;
struct TYPE_6__ {TYPE_1__* format; struct v4l2_frmsize_discrete* size; } ;
struct TYPE_4__ {scalar_t__ pixelformat; } ;


 int EINVAL ;
 int V4L2_FRMSIZE_TYPE_DISCRETE ;
 struct video_i2c_data* video_drvdata (struct file*) ;

__attribute__((used)) static int video_i2c_enum_framesizes(struct file *file, void *fh,
           struct v4l2_frmsizeenum *fsize)
{
 const struct video_i2c_data *data = video_drvdata(file);
 const struct v4l2_frmsize_discrete *size = data->chip->size;


 if (fsize->index > 0)
  return -EINVAL;

 if (fsize->pixel_format != data->chip->format->pixelformat)
  return -EINVAL;

 fsize->type = V4L2_FRMSIZE_TYPE_DISCRETE;
 fsize->discrete.width = size->width;
 fsize->discrete.height = size->height;

 return 0;
}
