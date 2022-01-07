
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_check_dv_timings_fnc ;
typedef int u32 ;
struct v4l2_dv_timings_cap {int dummy; } ;
struct TYPE_2__ {int width; int flags; } ;
struct v4l2_dv_timings {TYPE_1__ bt; } ;


 int V4L2_DV_FL_REDUCED_FPS ;
 scalar_t__ can_reduce_fps (TYPE_1__*) ;
 struct v4l2_dv_timings* v4l2_dv_timings_presets ;
 scalar_t__ v4l2_match_dv_timings (struct v4l2_dv_timings*,struct v4l2_dv_timings*,unsigned int,int) ;
 scalar_t__ v4l2_valid_dv_timings (struct v4l2_dv_timings*,struct v4l2_dv_timings_cap const*,int ,void*) ;

bool v4l2_find_dv_timings_cap(struct v4l2_dv_timings *t,
         const struct v4l2_dv_timings_cap *cap,
         unsigned pclock_delta,
         v4l2_check_dv_timings_fnc fnc,
         void *fnc_handle)
{
 int i;

 if (!v4l2_valid_dv_timings(t, cap, fnc, fnc_handle))
  return 0;

 for (i = 0; i < v4l2_dv_timings_presets[i].bt.width; i++) {
  if (v4l2_valid_dv_timings(v4l2_dv_timings_presets + i, cap,
       fnc, fnc_handle) &&
      v4l2_match_dv_timings(t, v4l2_dv_timings_presets + i,
       pclock_delta, 0)) {
   u32 flags = t->bt.flags & V4L2_DV_FL_REDUCED_FPS;

   *t = v4l2_dv_timings_presets[i];
   if (can_reduce_fps(&t->bt))
    t->bt.flags |= flags;

   return 1;
  }
 }
 return 0;
}
