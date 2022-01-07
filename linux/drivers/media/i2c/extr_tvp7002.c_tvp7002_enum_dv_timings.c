
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_enum_dv_timings {scalar_t__ pad; size_t index; int timings; } ;
struct TYPE_2__ {int timings; } ;


 int EINVAL ;
 size_t NUM_TIMINGS ;
 TYPE_1__* tvp7002_timings ;

__attribute__((used)) static int tvp7002_enum_dv_timings(struct v4l2_subdev *sd,
  struct v4l2_enum_dv_timings *timings)
{
 if (timings->pad != 0)
  return -EINVAL;


 if (timings->index >= NUM_TIMINGS)
  return -EINVAL;

 timings->timings = tvp7002_timings[timings->index].timings;
 return 0;
}
