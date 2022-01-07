
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_interval_enum {scalar_t__ pad; size_t index; scalar_t__ width; scalar_t__ height; int interval; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {scalar_t__ width; scalar_t__ height; } ;
struct s5c73m3_interval {int interval; TYPE_1__ size; } ;
struct s5c73m3 {int lock; } ;


 size_t ARRAY_SIZE (struct s5c73m3_interval*) ;
 int EINVAL ;
 scalar_t__ OIF_SOURCE_PAD ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct s5c73m3* oif_sd_to_s5c73m3 (struct v4l2_subdev*) ;
 struct s5c73m3_interval* s5c73m3_intervals ;

__attribute__((used)) static int s5c73m3_oif_enum_frame_interval(struct v4l2_subdev *sd,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_frame_interval_enum *fie)
{
 struct s5c73m3 *state = oif_sd_to_s5c73m3(sd);
 const struct s5c73m3_interval *fi;
 int ret = 0;

 if (fie->pad != OIF_SOURCE_PAD)
  return -EINVAL;
 if (fie->index >= ARRAY_SIZE(s5c73m3_intervals))
  return -EINVAL;

 mutex_lock(&state->lock);
 fi = &s5c73m3_intervals[fie->index];
 if (fie->width > fi->size.width || fie->height > fi->size.height)
  ret = -EINVAL;
 else
  fie->interval = fi->interval;
 mutex_unlock(&state->lock);

 return ret;
}
