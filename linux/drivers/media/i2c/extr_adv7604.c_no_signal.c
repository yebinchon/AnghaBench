
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 scalar_t__ is_digital_input (struct v4l2_subdev*) ;
 int no_lock_sspd (struct v4l2_subdev*) ;
 int no_lock_stdi (struct v4l2_subdev*) ;
 int no_lock_tmds (struct v4l2_subdev*) ;
 int no_power (struct v4l2_subdev*) ;
 int no_signal_tmds (struct v4l2_subdev*) ;

__attribute__((used)) static inline bool no_signal(struct v4l2_subdev *sd)
{
 bool ret;

 ret = no_power(sd);

 ret |= no_lock_stdi(sd);
 ret |= no_lock_sspd(sd);

 if (is_digital_input(sd)) {
  ret |= no_lock_tmds(sd);
  ret |= no_signal_tmds(sd);
 }

 return ret;
}
