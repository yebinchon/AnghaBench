
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int step_height; int step_width; int max_height; int max_width; int min_height; int min_width; } ;
struct v4l2_frmsizeenum {scalar_t__ index; TYPE_1__ stepwise; int pixel_format; int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int MAX_H ;
 int MAX_W ;
 int MIN_H ;
 int MIN_W ;
 int V4L2_FRMSIZE_TYPE_STEPWISE ;
 int find_format (int ) ;
 int get_alignment (int ,int *,int *) ;

__attribute__((used)) static int vidioc_enum_framesizes(struct file *file, void *priv,
      struct v4l2_frmsizeenum *fsize)
{
 if (fsize->index != 0)
  return -EINVAL;

 if (!find_format(fsize->pixel_format))
  return -EINVAL;

 fsize->type = V4L2_FRMSIZE_TYPE_STEPWISE;
 fsize->stepwise.min_width = MIN_W;
 fsize->stepwise.min_height = MIN_H;
 fsize->stepwise.max_width = MAX_W;
 fsize->stepwise.max_height = MAX_H;

 get_alignment(fsize->pixel_format,
        &fsize->stepwise.step_width,
        &fsize->stepwise.step_height);
 return 0;
}
