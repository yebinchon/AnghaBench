
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int denominator; int numerator; } ;
struct v4l2_subdev_frame_interval {TYPE_1__ interval; } ;
struct v4l2_subdev {int dummy; } ;
struct ov965x {int apply_frame_fmt; int lock; } ;


 int __ov965x_set_frame_interval (struct ov965x*,struct v4l2_subdev_frame_interval*) ;
 int debug ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ov965x* to_ov965x (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ,int ) ;

__attribute__((used)) static int ov965x_s_frame_interval(struct v4l2_subdev *sd,
       struct v4l2_subdev_frame_interval *fi)
{
 struct ov965x *ov965x = to_ov965x(sd);
 int ret;

 v4l2_dbg(1, debug, sd, "Setting %d/%d frame interval\n",
   fi->interval.numerator, fi->interval.denominator);

 mutex_lock(&ov965x->lock);
 ret = __ov965x_set_frame_interval(ov965x, fi);
 ov965x->apply_frame_fmt = 1;
 mutex_unlock(&ov965x->lock);
 return ret;
}
