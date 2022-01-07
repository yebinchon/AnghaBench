
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_enum_dv_timings {scalar_t__ pad; } ;


 int EINVAL ;
 int adv7842_check_dv_timings ;
 int adv7842_get_dv_timings_cap (struct v4l2_subdev*) ;
 int v4l2_enum_dv_timings_cap (struct v4l2_enum_dv_timings*,int ,int ,int *) ;

__attribute__((used)) static int adv7842_enum_dv_timings(struct v4l2_subdev *sd,
       struct v4l2_enum_dv_timings *timings)
{
 if (timings->pad != 0)
  return -EINVAL;

 return v4l2_enum_dv_timings_cap(timings,
  adv7842_get_dv_timings_cap(sd), adv7842_check_dv_timings, ((void*)0));
}
