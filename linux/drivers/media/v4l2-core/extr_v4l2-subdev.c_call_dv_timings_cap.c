
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {TYPE_2__* ops; } ;
struct v4l2_dv_timings_cap {int pad; } ;
struct TYPE_4__ {TYPE_1__* pad; } ;
struct TYPE_3__ {int (* dv_timings_cap ) (struct v4l2_subdev*,struct v4l2_dv_timings_cap*) ;} ;


 int EINVAL ;
 scalar_t__ check_pad (struct v4l2_subdev*,int ) ;
 int stub1 (struct v4l2_subdev*,struct v4l2_dv_timings_cap*) ;

__attribute__((used)) static int call_dv_timings_cap(struct v4l2_subdev *sd,
          struct v4l2_dv_timings_cap *cap)
{
 if (!cap)
  return -EINVAL;

 return check_pad(sd, cap->pad) ? :
        sd->ops->pad->dv_timings_cap(sd, cap);
}
