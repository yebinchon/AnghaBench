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
struct adv7180_state {int powered; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int FUNC0 (struct adv7180_state*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct adv7180_state* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd, int on)
{
	struct adv7180_state *state = FUNC3(sd);
	int ret;

	ret = FUNC1(&state->mutex);
	if (ret)
		return ret;

	ret = FUNC0(state, on);
	if (ret == 0)
		state->powered = on;

	FUNC2(&state->mutex);
	return ret;
}