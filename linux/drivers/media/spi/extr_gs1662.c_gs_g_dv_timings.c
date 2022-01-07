
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_dv_timings {int dummy; } ;
struct gs {struct v4l2_dv_timings current_timings; } ;


 struct gs* to_gs (struct v4l2_subdev*) ;

__attribute__((used)) static int gs_g_dv_timings(struct v4l2_subdev *sd,
      struct v4l2_dv_timings *timings)
{
 struct gs *gs = to_gs(sd);

 *timings = gs->current_timings;
 return 0;
}
