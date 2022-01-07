
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int step_width; int step_height; int max_height; int min_height; int max_width; int min_width; } ;
struct v4l2_frmsizeenum {int pixel_format; TYPE_1__ stepwise; int type; scalar_t__ index; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int id; } ;


 int EINVAL ;
 int MAX_HEIGHT ;
 int MAX_WIDTH ;
 int MIN_HEIGHT ;
 int MIN_WIDTH ;
 int V4L2_FRMSIZE_TYPE_STEPWISE ;


 TYPE_2__* find_fmt (int) ;

__attribute__((used)) static int vicodec_enum_framesizes(struct file *file, void *fh,
       struct v4l2_frmsizeenum *fsize)
{
 switch (fsize->pixel_format) {
 case 128:
  break;
 case 129:
  break;
 default:
  if (find_fmt(fsize->pixel_format)->id == fsize->pixel_format)
   break;
  return -EINVAL;
 }

 if (fsize->index)
  return -EINVAL;

 fsize->type = V4L2_FRMSIZE_TYPE_STEPWISE;

 fsize->stepwise.min_width = MIN_WIDTH;
 fsize->stepwise.max_width = MAX_WIDTH;
 fsize->stepwise.step_width = 8;
 fsize->stepwise.min_height = MIN_HEIGHT;
 fsize->stepwise.max_height = MAX_HEIGHT;
 fsize->stepwise.step_height = 8;

 return 0;
}
