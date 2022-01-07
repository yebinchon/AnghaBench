
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_frame_interval {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct s5k5baf {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s5k5baf_set_frame_interval (struct s5k5baf*,struct v4l2_subdev_frame_interval*) ;
 struct s5k5baf* to_s5k5baf (struct v4l2_subdev*) ;

__attribute__((used)) static int s5k5baf_s_frame_interval(struct v4l2_subdev *sd,
       struct v4l2_subdev_frame_interval *fi)
{
 struct s5k5baf *state = to_s5k5baf(sd);

 mutex_lock(&state->lock);
 s5k5baf_set_frame_interval(state, fi);
 mutex_unlock(&state->lock);
 return 0;
}
