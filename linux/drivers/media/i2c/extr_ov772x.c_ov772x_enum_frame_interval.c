
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {int numerator; int denominator; } ;
struct v4l2_subdev_frame_interval_enum {size_t index; scalar_t__ width; scalar_t__ height; TYPE_1__ interval; scalar_t__ pad; } ;
struct v4l2_subdev {int dummy; } ;


 size_t ARRAY_SIZE (int *) ;
 int EINVAL ;
 scalar_t__ QVGA_HEIGHT ;
 scalar_t__ QVGA_WIDTH ;
 scalar_t__ VGA_HEIGHT ;
 scalar_t__ VGA_WIDTH ;
 int * ov772x_frame_intervals ;

__attribute__((used)) static int ov772x_enum_frame_interval(struct v4l2_subdev *sd,
          struct v4l2_subdev_pad_config *cfg,
          struct v4l2_subdev_frame_interval_enum *fie)
{
 if (fie->pad || fie->index >= ARRAY_SIZE(ov772x_frame_intervals))
  return -EINVAL;

 if (fie->width != VGA_WIDTH && fie->width != QVGA_WIDTH)
  return -EINVAL;
 if (fie->height != VGA_HEIGHT && fie->height != QVGA_HEIGHT)
  return -EINVAL;

 fie->interval.numerator = 1;
 fie->interval.denominator = ov772x_frame_intervals[fie->index];

 return 0;
}
