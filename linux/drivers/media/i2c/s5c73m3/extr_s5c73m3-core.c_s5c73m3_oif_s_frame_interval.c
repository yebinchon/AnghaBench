
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int denominator; int numerator; } ;
struct v4l2_subdev_frame_interval {scalar_t__ pad; TYPE_1__ interval; } ;
struct v4l2_subdev {int dummy; } ;
struct s5c73m3 {int apply_fiv; int lock; scalar_t__ streaming; } ;


 int EINVAL ;
 scalar_t__ OIF_SOURCE_PAD ;
 int __s5c73m3_set_frame_interval (struct s5c73m3*,struct v4l2_subdev_frame_interval*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct s5c73m3* oif_sd_to_s5c73m3 (struct v4l2_subdev*) ;
 int s5c73m3_dbg ;
 int s5c73m3_set_frame_rate (struct s5c73m3*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ,int ) ;

__attribute__((used)) static int s5c73m3_oif_s_frame_interval(struct v4l2_subdev *sd,
       struct v4l2_subdev_frame_interval *fi)
{
 struct s5c73m3 *state = oif_sd_to_s5c73m3(sd);
 int ret;

 if (fi->pad != OIF_SOURCE_PAD)
  return -EINVAL;

 v4l2_dbg(1, s5c73m3_dbg, sd, "Setting %d/%d frame interval\n",
   fi->interval.numerator, fi->interval.denominator);

 mutex_lock(&state->lock);

 ret = __s5c73m3_set_frame_interval(state, fi);
 if (!ret) {
  if (state->streaming)
   ret = s5c73m3_set_frame_rate(state);
  else
   state->apply_fiv = 1;
 }
 mutex_unlock(&state->lock);
 return ret;
}
