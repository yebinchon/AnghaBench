
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {int numerator; int denominator; } ;
struct v4l2_subdev_frame_interval_enum {int index; scalar_t__ width; scalar_t__ height; TYPE_1__ interval; scalar_t__ pad; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 scalar_t__ VGA_HEIGHT ;
 scalar_t__ VGA_WIDTH ;

__attribute__((used)) static int ov7740_enum_frame_interval(struct v4l2_subdev *sd,
    struct v4l2_subdev_pad_config *cfg,
    struct v4l2_subdev_frame_interval_enum *fie)
{
 if (fie->pad)
  return -EINVAL;

 if (fie->index >= 1)
  return -EINVAL;

 if ((fie->width != VGA_WIDTH) || (fie->height != VGA_HEIGHT))
  return -EINVAL;

 fie->interval.numerator = 1;
 fie->interval.denominator = 60;

 return 0;
}
