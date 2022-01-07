
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct v4l2_dv_timings {TYPE_1__ bt; } ;


 int V4L2_DV_FL_CAN_DETECT_REDUCED_FPS ;
 int adv7842_check_dv_timings ;
 int adv7842_get_dv_timings_cap (struct v4l2_subdev*) ;
 scalar_t__ is_digital_input (struct v4l2_subdev*) ;
 int v4l2_find_dv_timings_cap (struct v4l2_dv_timings*,int ,int,int ,int *) ;

__attribute__((used)) static void adv7842_fill_optional_dv_timings_fields(struct v4l2_subdev *sd,
  struct v4l2_dv_timings *timings)
{
 v4l2_find_dv_timings_cap(timings, adv7842_get_dv_timings_cap(sd),
   is_digital_input(sd) ? 250000 : 1000000,
   adv7842_check_dv_timings, ((void*)0));
 timings->bt.flags |= V4L2_DV_FL_CAN_DETECT_REDUCED_FPS;
}
