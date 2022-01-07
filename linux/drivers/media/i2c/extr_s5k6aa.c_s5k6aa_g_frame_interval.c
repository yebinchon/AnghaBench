
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_frame_interval {int interval; } ;
struct v4l2_subdev {int dummy; } ;
struct s5k6aa {int lock; TYPE_1__* fiv; } ;
struct TYPE_2__ {int interval; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct s5k6aa* to_s5k6aa (struct v4l2_subdev*) ;

__attribute__((used)) static int s5k6aa_g_frame_interval(struct v4l2_subdev *sd,
       struct v4l2_subdev_frame_interval *fi)
{
 struct s5k6aa *s5k6aa = to_s5k6aa(sd);

 mutex_lock(&s5k6aa->lock);
 fi->interval = s5k6aa->fiv->interval;
 mutex_unlock(&s5k6aa->lock);

 return 0;
}
