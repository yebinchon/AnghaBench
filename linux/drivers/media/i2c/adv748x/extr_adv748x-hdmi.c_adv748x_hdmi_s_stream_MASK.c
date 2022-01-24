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
struct adv748x_state {int /*<<< orphan*/  mutex; } ;
struct adv748x_hdmi {int /*<<< orphan*/  tx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct adv748x_state*) ; 
 struct adv748x_state* FUNC1 (struct adv748x_hdmi*) ; 
 struct adv748x_hdmi* FUNC2 (struct v4l2_subdev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct adv748x_state*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd, int enable)
{
	struct adv748x_hdmi *hdmi = FUNC2(sd);
	struct adv748x_state *state = FUNC1(hdmi);
	int ret;

	FUNC5(&state->mutex);

	ret = FUNC3(hdmi->tx, enable);
	if (ret)
		goto done;

	if (FUNC0(state))
		FUNC4(state, "Detected HDMI signal\n");
	else
		FUNC4(state, "Couldn't detect HDMI video signal\n");

done:
	FUNC6(&state->mutex);
	return ret;
}