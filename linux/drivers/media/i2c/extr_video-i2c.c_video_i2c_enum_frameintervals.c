
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_i2c_data {TYPE_1__* chip; } ;
struct v4l2_frmsize_discrete {scalar_t__ width; scalar_t__ height; } ;
struct v4l2_frmivalenum {size_t index; scalar_t__ width; scalar_t__ height; int discrete; int type; } ;
struct file {int dummy; } ;
struct TYPE_2__ {size_t num_frame_intervals; int * frame_intervals; struct v4l2_frmsize_discrete* size; } ;


 int EINVAL ;
 int V4L2_FRMIVAL_TYPE_DISCRETE ;
 struct video_i2c_data* video_drvdata (struct file*) ;

__attribute__((used)) static int video_i2c_enum_frameintervals(struct file *file, void *priv,
        struct v4l2_frmivalenum *fe)
{
 const struct video_i2c_data *data = video_drvdata(file);
 const struct v4l2_frmsize_discrete *size = data->chip->size;

 if (fe->index >= data->chip->num_frame_intervals)
  return -EINVAL;

 if (fe->width != size->width || fe->height != size->height)
  return -EINVAL;

 fe->type = V4L2_FRMIVAL_TYPE_DISCRETE;
 fe->discrete = data->chip->frame_intervals[fe->index];

 return 0;
}
