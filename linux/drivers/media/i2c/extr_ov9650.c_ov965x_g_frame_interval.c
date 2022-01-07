
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_frame_interval {int interval; } ;
struct v4l2_subdev {int dummy; } ;
struct ov965x {int lock; TYPE_1__* fiv; } ;
struct TYPE_2__ {int interval; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ov965x* to_ov965x (struct v4l2_subdev*) ;

__attribute__((used)) static int ov965x_g_frame_interval(struct v4l2_subdev *sd,
       struct v4l2_subdev_frame_interval *fi)
{
 struct ov965x *ov965x = to_ov965x(sd);

 mutex_lock(&ov965x->lock);
 fi->interval = ov965x->fiv->interval;
 mutex_unlock(&ov965x->lock);

 return 0;
}
