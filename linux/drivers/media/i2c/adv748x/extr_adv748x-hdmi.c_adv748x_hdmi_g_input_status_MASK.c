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
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev {int dummy; } ;
struct adv748x_state {int /*<<< orphan*/  mutex; } ;
struct adv748x_hdmi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  V4L2_IN_ST_NO_SIGNAL ; 
 scalar_t__ FUNC0 (struct adv748x_state*) ; 
 struct adv748x_state* FUNC1 (struct adv748x_hdmi*) ; 
 struct adv748x_hdmi* FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, u32 *status)
{
	struct adv748x_hdmi *hdmi = FUNC2(sd);
	struct adv748x_state *state = FUNC1(hdmi);

	FUNC3(&state->mutex);

	*status = FUNC0(state) ? 0 : V4L2_IN_ST_NO_SIGNAL;

	FUNC4(&state->mutex);

	return 0;
}