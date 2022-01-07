
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int denominator; int numerator; } ;
struct v4l2_subdev_frame_interval {TYPE_1__ interval; } ;
struct v4l2_subdev {int dummy; } ;
struct s5k6aa {int apply_cfg; int lock; } ;


 int __s5k6aa_set_frame_interval (struct s5k6aa*,struct v4l2_subdev_frame_interval*) ;
 int debug ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct s5k6aa* to_s5k6aa (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ,int ) ;

__attribute__((used)) static int s5k6aa_s_frame_interval(struct v4l2_subdev *sd,
       struct v4l2_subdev_frame_interval *fi)
{
 struct s5k6aa *s5k6aa = to_s5k6aa(sd);
 int ret;

 v4l2_dbg(1, debug, sd, "Setting %d/%d frame interval\n",
   fi->interval.numerator, fi->interval.denominator);

 mutex_lock(&s5k6aa->lock);
 ret = __s5k6aa_set_frame_interval(s5k6aa, fi);
 s5k6aa->apply_cfg = 1;

 mutex_unlock(&s5k6aa->lock);
 return ret;
}
