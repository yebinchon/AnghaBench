
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_dv_timings_cap {scalar_t__ pad; } ;


 int EINVAL ;
 struct v4l2_dv_timings_cap ad9389b_timings_cap ;

__attribute__((used)) static int ad9389b_dv_timings_cap(struct v4l2_subdev *sd,
      struct v4l2_dv_timings_cap *cap)
{
 if (cap->pad != 0)
  return -EINVAL;

 *cap = ad9389b_timings_cap;
 return 0;
}
