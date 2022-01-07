
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_4__ {int numerator; int denominator; } ;
struct v4l2_subdev_frame_interval_enum {size_t index; scalar_t__ width; scalar_t__ height; TYPE_2__ interval; scalar_t__ pad; } ;
struct v4l2_subdev {int dummy; } ;
struct ov7670_win_size {scalar_t__ width; scalar_t__ height; } ;
struct ov7670_info {scalar_t__ min_width; scalar_t__ min_height; TYPE_1__* devtype; } ;
struct TYPE_3__ {unsigned int n_win_sizes; struct ov7670_win_size* win_sizes; } ;


 size_t ARRAY_SIZE (int *) ;
 int EINVAL ;
 int * ov7670_frame_rates ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7670_enum_frame_interval(struct v4l2_subdev *sd,
          struct v4l2_subdev_pad_config *cfg,
          struct v4l2_subdev_frame_interval_enum *fie)
{
 struct ov7670_info *info = to_state(sd);
 unsigned int n_win_sizes = info->devtype->n_win_sizes;
 int i;

 if (fie->pad)
  return -EINVAL;
 if (fie->index >= ARRAY_SIZE(ov7670_frame_rates))
  return -EINVAL;







 for (i = 0; i < n_win_sizes; i++) {
  struct ov7670_win_size *win = &info->devtype->win_sizes[i];

  if (info->min_width && win->width < info->min_width)
   continue;
  if (info->min_height && win->height < info->min_height)
   continue;
  if (fie->width == win->width && fie->height == win->height)
   break;
 }
 if (i == n_win_sizes)
  return -EINVAL;
 fie->interval.numerator = 1;
 fie->interval.denominator = ov7670_frame_rates[fie->index];
 return 0;
}
