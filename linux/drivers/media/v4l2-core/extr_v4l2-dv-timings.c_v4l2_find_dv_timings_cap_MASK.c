#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v4l2_check_dv_timings_fnc ;
typedef  int u32 ;
struct v4l2_dv_timings_cap {int dummy; } ;
struct TYPE_2__ {int width; int flags; } ;
struct v4l2_dv_timings {TYPE_1__ bt; } ;

/* Variables and functions */
 int V4L2_DV_FL_REDUCED_FPS ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 struct v4l2_dv_timings* v4l2_dv_timings_presets ; 
 scalar_t__ FUNC1 (struct v4l2_dv_timings*,struct v4l2_dv_timings*,unsigned int,int) ; 
 scalar_t__ FUNC2 (struct v4l2_dv_timings*,struct v4l2_dv_timings_cap const*,int /*<<< orphan*/ ,void*) ; 

bool FUNC3(struct v4l2_dv_timings *t,
			      const struct v4l2_dv_timings_cap *cap,
			      unsigned pclock_delta,
			      v4l2_check_dv_timings_fnc fnc,
			      void *fnc_handle)
{
	int i;

	if (!FUNC2(t, cap, fnc, fnc_handle))
		return false;

	for (i = 0; i < v4l2_dv_timings_presets[i].bt.width; i++) {
		if (FUNC2(v4l2_dv_timings_presets + i, cap,
					  fnc, fnc_handle) &&
		    FUNC1(t, v4l2_dv_timings_presets + i,
					  pclock_delta, false)) {
			u32 flags = t->bt.flags & V4L2_DV_FL_REDUCED_FPS;

			*t = v4l2_dv_timings_presets[i];
			if (FUNC0(&t->bt))
				t->bt.flags |= flags;

			return true;
		}
	}
	return false;
}