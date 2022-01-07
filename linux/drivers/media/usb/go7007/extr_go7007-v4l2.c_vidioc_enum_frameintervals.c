
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int numerator; int denominator; } ;
struct v4l2_frmivalenum {int index; int width; int height; TYPE_2__ discrete; int type; int pixel_format; } ;
struct go7007 {int sensor_framerate; TYPE_1__* board_info; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int sensor_flags; } ;


 int EINVAL ;
 int GO7007_SENSOR_SCALING ;
 int V4L2_FRMIVAL_TYPE_DISCRETE ;
 int get_resolution (struct go7007*,int*,int*) ;
 int valid_pixelformat (int ) ;
 struct go7007* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_enum_frameintervals(struct file *filp, void *priv,
          struct v4l2_frmivalenum *fival)
{
 struct go7007 *go = video_drvdata(filp);
 int width, height;
 int i;

 if (fival->index > 4)
  return -EINVAL;

 if (!valid_pixelformat(fival->pixel_format))
  return -EINVAL;

 if (!(go->board_info->sensor_flags & GO7007_SENSOR_SCALING)) {
  get_resolution(go, &width, &height);
  for (i = 0; i <= 2; i++)
   if (fival->width == ((width >> i) & ~0xf) &&
       fival->height == ((height >> i) & ~0xf))
    break;
  if (i > 2)
   return -EINVAL;
 }
 fival->type = V4L2_FRMIVAL_TYPE_DISCRETE;
 fival->discrete.numerator = 1001 * (fival->index + 1);
 fival->discrete.denominator = go->sensor_framerate;
 return 0;
}
