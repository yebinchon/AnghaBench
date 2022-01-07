
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numerator; unsigned int denominator; } ;
struct v4l2_frmivalenum {scalar_t__ width; scalar_t__ height; scalar_t__ pixel_format; TYPE_1__ discrete; int type; int index; } ;
struct pwc_device {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 unsigned int PSZ_MAX ;
 int V4L2_FRMIVAL_TYPE_DISCRETE ;
 scalar_t__ V4L2_PIX_FMT_YUV420 ;
 unsigned int pwc_get_fps (struct pwc_device*,int ,int) ;
 scalar_t__** pwc_image_sizes ;
 struct pwc_device* video_drvdata (struct file*) ;

__attribute__((used)) static int pwc_enum_frameintervals(struct file *file, void *fh,
        struct v4l2_frmivalenum *fival)
{
 struct pwc_device *pdev = video_drvdata(file);
 int size = -1;
 unsigned int i;

 for (i = 0; i < PSZ_MAX; i++) {
  if (pwc_image_sizes[i][0] == fival->width &&
    pwc_image_sizes[i][1] == fival->height) {
   size = i;
   break;
  }
 }


 if (size < 0 || fival->pixel_format != V4L2_PIX_FMT_YUV420)
  return -EINVAL;

 i = pwc_get_fps(pdev, fival->index, size);
 if (!i)
  return -EINVAL;

 fival->type = V4L2_FRMIVAL_TYPE_DISCRETE;
 fival->discrete.numerator = 1;
 fival->discrete.denominator = i;

 return 0;
}
