#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct v4l2_dv_timings {int dummy; } ;
struct adv76xx_state {struct v4l2_dv_timings timings; } ;

/* Variables and functions */
 struct adv76xx_state* FUNC0 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC1(struct v4l2_subdev *sd,
		struct v4l2_dv_timings *timings)
{
	struct adv76xx_state *state = FUNC0(sd);

	*timings = state->timings;
	return 0;
}