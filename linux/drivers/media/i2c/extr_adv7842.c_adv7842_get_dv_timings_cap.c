
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_dv_timings_cap {int dummy; } ;


 struct v4l2_dv_timings_cap const adv7842_timings_cap_analog ;
 struct v4l2_dv_timings_cap const adv7842_timings_cap_digital ;
 scalar_t__ is_digital_input (struct v4l2_subdev*) ;

__attribute__((used)) static inline const struct v4l2_dv_timings_cap *
adv7842_get_dv_timings_cap(struct v4l2_subdev *sd)
{
 return is_digital_input(sd) ? &adv7842_timings_cap_digital :
          &adv7842_timings_cap_analog;
}
