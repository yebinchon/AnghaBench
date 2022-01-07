
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int v4l2_check_dv_timings_fnc ;
typedef size_t u32 ;
struct TYPE_4__ {scalar_t__ width; } ;
struct TYPE_5__ {TYPE_1__ bt; } ;
struct v4l2_enum_dv_timings {scalar_t__ index; TYPE_2__ timings; int reserved; } ;
struct v4l2_dv_timings_cap {int dummy; } ;


 int EINVAL ;
 int memset (int ,int ,int) ;
 TYPE_2__* v4l2_dv_timings_presets ;
 scalar_t__ v4l2_valid_dv_timings (TYPE_2__*,struct v4l2_dv_timings_cap const*,int ,void*) ;

int v4l2_enum_dv_timings_cap(struct v4l2_enum_dv_timings *t,
        const struct v4l2_dv_timings_cap *cap,
        v4l2_check_dv_timings_fnc fnc,
        void *fnc_handle)
{
 u32 i, idx;

 memset(t->reserved, 0, sizeof(t->reserved));
 for (i = idx = 0; v4l2_dv_timings_presets[i].bt.width; i++) {
  if (v4l2_valid_dv_timings(v4l2_dv_timings_presets + i, cap,
       fnc, fnc_handle) &&
      idx++ == t->index) {
   t->timings = v4l2_dv_timings_presets[i];
   return 0;
  }
 }
 return -EINVAL;
}
