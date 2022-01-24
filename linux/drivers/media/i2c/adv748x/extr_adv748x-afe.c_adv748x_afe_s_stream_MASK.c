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
typedef  scalar_t__ u32 ;
struct v4l2_subdev {int dummy; } ;
struct adv748x_state {int /*<<< orphan*/  mutex; } ;
struct adv748x_afe {int streaming; int /*<<< orphan*/  tx; int /*<<< orphan*/  input; } ;

/* Variables and functions */
 scalar_t__ V4L2_IN_ST_NO_SIGNAL ; 
 int FUNC0 (struct adv748x_afe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adv748x_afe*,scalar_t__*,int /*<<< orphan*/ *) ; 
 struct adv748x_state* FUNC2 (struct adv748x_afe*) ; 
 struct adv748x_afe* FUNC3 (struct v4l2_subdev*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct adv748x_state*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct v4l2_subdev *sd, int enable)
{
	struct adv748x_afe *afe = FUNC3(sd);
	struct adv748x_state *state = FUNC2(afe);
	u32 signal = V4L2_IN_ST_NO_SIGNAL;
	int ret;

	FUNC6(&state->mutex);

	if (enable) {
		ret = FUNC0(afe, afe->input);
		if (ret)
			goto unlock;
	}

	ret = FUNC4(afe->tx, enable);
	if (ret)
		goto unlock;

	afe->streaming = enable;

	FUNC1(afe, &signal, NULL);
	if (signal != V4L2_IN_ST_NO_SIGNAL)
		FUNC5(state, "Detected SDP signal\n");
	else
		FUNC5(state, "Couldn't detect SDP video signal\n");

unlock:
	FUNC7(&state->mutex);

	return ret;
}