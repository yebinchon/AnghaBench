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
struct adv748x_state {int /*<<< orphan*/  mutex; } ;
struct adv748x_hdmi {struct v4l2_dv_timings timings; } ;

/* Variables and functions */
 struct adv748x_state* FUNC0 (struct adv748x_hdmi*) ; 
 struct adv748x_hdmi* FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
				     struct v4l2_dv_timings *timings)
{
	struct adv748x_hdmi *hdmi = FUNC1(sd);
	struct adv748x_state *state = FUNC0(hdmi);

	FUNC2(&state->mutex);

	*timings = hdmi->timings;

	FUNC3(&state->mutex);

	return 0;
}