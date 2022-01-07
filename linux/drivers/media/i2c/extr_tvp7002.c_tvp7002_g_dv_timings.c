
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_dv_timings {int dummy; } ;
struct tvp7002 {TYPE_1__* current_timings; } ;
struct TYPE_2__ {struct v4l2_dv_timings timings; } ;


 struct tvp7002* to_tvp7002 (struct v4l2_subdev*) ;

__attribute__((used)) static int tvp7002_g_dv_timings(struct v4l2_subdev *sd,
     struct v4l2_dv_timings *dv_timings)
{
 struct tvp7002 *device = to_tvp7002(sd);

 *dv_timings = device->current_timings->timings;
 return 0;
}
