
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int denominator; int numerator; } ;
struct v4l2_subdev_frame_interval {TYPE_1__ interval; } ;
struct TYPE_6__ {int numerator; } ;
struct TYPE_5__ {scalar_t__ width; scalar_t__ height; } ;
struct s5c73m3_interval {TYPE_3__ interval; TYPE_2__ size; } ;
struct s5c73m3_frame_size {scalar_t__ width; scalar_t__ height; } ;
struct s5c73m3 {int sensor_sd; struct s5c73m3_interval const* fiv; struct s5c73m3_frame_size** sensor_pix_size; } ;


 unsigned int ARRAY_SIZE (struct s5c73m3_interval*) ;
 int EINVAL ;
 size_t RES_ISP ;
 unsigned int UINT_MAX ;
 unsigned int abs (int) ;
 int s5c73m3_dbg ;
 struct s5c73m3_interval* s5c73m3_intervals ;
 int v4l2_dbg (int,int ,int *,char*,int) ;

__attribute__((used)) static int __s5c73m3_set_frame_interval(struct s5c73m3 *state,
     struct v4l2_subdev_frame_interval *fi)
{
 const struct s5c73m3_frame_size *prev_size =
      state->sensor_pix_size[RES_ISP];
 const struct s5c73m3_interval *fiv = &s5c73m3_intervals[0];
 unsigned int ret, min_err = UINT_MAX;
 unsigned int i, fr_time;

 if (fi->interval.denominator == 0)
  return -EINVAL;

 fr_time = fi->interval.numerator * 1000 / fi->interval.denominator;

 for (i = 0; i < ARRAY_SIZE(s5c73m3_intervals); i++) {
  const struct s5c73m3_interval *iv = &s5c73m3_intervals[i];

  if (prev_size->width > iv->size.width ||
      prev_size->height > iv->size.height)
   continue;

  ret = abs(iv->interval.numerator / 1000 - fr_time);
  if (ret < min_err) {
   fiv = iv;
   min_err = ret;
  }
 }
 state->fiv = fiv;

 v4l2_dbg(1, s5c73m3_dbg, &state->sensor_sd,
   "Changed frame interval to %u us\n", fiv->interval.numerator);
 return 0;
}
