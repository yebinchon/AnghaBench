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
struct adv7180_state {int streaming; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct adv7180_state* FUNC2 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC3(struct v4l2_subdev *sd, int enable)
{
	struct adv7180_state *state = FUNC2(sd);
	int ret;

	/* It's always safe to stop streaming, no need to take the lock */
	if (!enable) {
		state->streaming = enable;
		return 0;
	}

	/* Must wait until querystd released the lock */
	ret = FUNC0(&state->mutex);
	if (ret)
		return ret;
	state->streaming = enable;
	FUNC1(&state->mutex);
	return 0;
}