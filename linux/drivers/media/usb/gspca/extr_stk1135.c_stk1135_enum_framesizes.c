
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int min_width; int min_height; int max_width; int max_height; int step_width; int step_height; } ;
struct v4l2_frmsizeenum {scalar_t__ index; scalar_t__ pixel_format; TYPE_1__ stepwise; int type; } ;
struct gspca_dev {int dummy; } ;


 int EINVAL ;
 int V4L2_FRMSIZE_TYPE_STEPWISE ;
 scalar_t__ V4L2_PIX_FMT_SBGGR8 ;

__attribute__((used)) static int stk1135_enum_framesizes(struct gspca_dev *gspca_dev,
   struct v4l2_frmsizeenum *fsize)
{
 if (fsize->index != 0 || fsize->pixel_format != V4L2_PIX_FMT_SBGGR8)
  return -EINVAL;

 fsize->type = V4L2_FRMSIZE_TYPE_STEPWISE;
 fsize->stepwise.min_width = 32;
 fsize->stepwise.min_height = 32;
 fsize->stepwise.max_width = 1280;
 fsize->stepwise.max_height = 1024;
 fsize->stepwise.step_width = 2;
 fsize->stepwise.step_height = 2;

 return 0;
}
