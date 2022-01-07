
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_enum_dv_timings {scalar_t__ pad; } ;


 int EINVAL ;
 int ths8200_timings_cap ;
 int v4l2_enum_dv_timings_cap (struct v4l2_enum_dv_timings*,int *,int *,int *) ;

__attribute__((used)) static int ths8200_enum_dv_timings(struct v4l2_subdev *sd,
       struct v4l2_enum_dv_timings *timings)
{
 if (timings->pad != 0)
  return -EINVAL;

 return v4l2_enum_dv_timings_cap(timings, &ths8200_timings_cap,
   ((void*)0), ((void*)0));
}
