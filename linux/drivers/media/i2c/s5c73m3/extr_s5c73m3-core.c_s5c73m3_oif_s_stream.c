
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct s5c73m3 {int lock; } ;


 int __s5c73m3_s_stream (struct s5c73m3*,struct v4l2_subdev*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct s5c73m3* oif_sd_to_s5c73m3 (struct v4l2_subdev*) ;

__attribute__((used)) static int s5c73m3_oif_s_stream(struct v4l2_subdev *sd, int on)
{
 struct s5c73m3 *state = oif_sd_to_s5c73m3(sd);
 int ret;

 mutex_lock(&state->lock);
 ret = __s5c73m3_s_stream(state, sd, on);
 mutex_unlock(&state->lock);

 return ret;
}
