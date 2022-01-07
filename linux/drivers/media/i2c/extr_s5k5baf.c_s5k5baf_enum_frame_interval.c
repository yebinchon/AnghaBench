
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {int denominator; scalar_t__ numerator; } ;
struct v4l2_subdev_frame_interval_enum {scalar_t__ index; scalar_t__ pad; TYPE_1__ interval; int height; int width; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 scalar_t__ PAD_CIS ;
 int S5K5BAF_CIS_HEIGHT ;
 int S5K5BAF_CIS_WIDTH ;
 scalar_t__ S5K5BAF_MAX_FR_TIME ;
 scalar_t__ S5K5BAF_MIN_FR_TIME ;
 int S5K5BAF_WIN_HEIGHT_MIN ;
 int S5K5BAF_WIN_WIDTH_MIN ;
 int v4l_bound_align_image (int *,int ,int ,int,int *,int ,int ,int,int ) ;

__attribute__((used)) static int s5k5baf_enum_frame_interval(struct v4l2_subdev *sd,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_frame_interval_enum *fie)
{
 if (fie->index > S5K5BAF_MAX_FR_TIME - S5K5BAF_MIN_FR_TIME ||
     fie->pad != PAD_CIS)
  return -EINVAL;

 v4l_bound_align_image(&fie->width, S5K5BAF_WIN_WIDTH_MIN,
         S5K5BAF_CIS_WIDTH, 1,
         &fie->height, S5K5BAF_WIN_HEIGHT_MIN,
         S5K5BAF_CIS_HEIGHT, 1, 0);

 fie->interval.numerator = S5K5BAF_MIN_FR_TIME + fie->index;
 fie->interval.denominator = 10000;

 return 0;
}
