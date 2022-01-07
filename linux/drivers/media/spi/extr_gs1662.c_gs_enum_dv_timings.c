
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_enum_dv_timings {size_t index; scalar_t__ pad; int timings; } ;


 size_t ARRAY_SIZE (int *) ;
 int EINVAL ;
 int * fmt_cap ;

__attribute__((used)) static int gs_enum_dv_timings(struct v4l2_subdev *sd,
         struct v4l2_enum_dv_timings *timings)
{
 if (timings->index >= ARRAY_SIZE(fmt_cap))
  return -EINVAL;

 if (timings->pad != 0)
  return -EINVAL;

 timings->timings = fmt_cap[timings->index];
 return 0;
}
