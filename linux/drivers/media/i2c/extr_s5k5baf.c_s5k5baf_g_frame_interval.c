
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int denominator; int numerator; } ;
struct v4l2_subdev_frame_interval {TYPE_1__ interval; } ;
struct v4l2_subdev {int dummy; } ;
struct s5k5baf {int lock; int fiv; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct s5k5baf* to_s5k5baf (struct v4l2_subdev*) ;

__attribute__((used)) static int s5k5baf_g_frame_interval(struct v4l2_subdev *sd,
       struct v4l2_subdev_frame_interval *fi)
{
 struct s5k5baf *state = to_s5k5baf(sd);

 mutex_lock(&state->lock);
 fi->interval.numerator = state->fiv;
 fi->interval.denominator = 10000;
 mutex_unlock(&state->lock);

 return 0;
}
