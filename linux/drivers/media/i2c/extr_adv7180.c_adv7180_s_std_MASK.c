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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct adv7180_state {int /*<<< orphan*/  mutex; int /*<<< orphan*/  curr_norm; } ;

/* Variables and functions */
 int FUNC0 (struct adv7180_state*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct adv7180_state* FUNC3 (struct v4l2_subdev*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, v4l2_std_id std)
{
	struct adv7180_state *state = FUNC3(sd);
	int ret = FUNC1(&state->mutex);

	if (ret)
		return ret;

	/* Make sure we can support this std */
	ret = FUNC4(std);
	if (ret < 0)
		goto out;

	state->curr_norm = std;

	ret = FUNC0(state);
out:
	FUNC2(&state->mutex);
	return ret;
}