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
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  handler; } ;
struct s5k5baf {int power; TYPE_1__ ctrls; int /*<<< orphan*/  lock; int /*<<< orphan*/ * fw; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SET_HOST_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct s5k5baf*) ; 
 int /*<<< orphan*/  FUNC3 (struct s5k5baf*) ; 
 int /*<<< orphan*/  FUNC4 (struct s5k5baf*) ; 
 int /*<<< orphan*/  FUNC5 (struct s5k5baf*) ; 
 int /*<<< orphan*/  FUNC6 (struct s5k5baf*) ; 
 int /*<<< orphan*/  FUNC7 (struct s5k5baf*) ; 
 int FUNC8 (struct s5k5baf*) ; 
 int /*<<< orphan*/  FUNC9 (struct s5k5baf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct s5k5baf*) ; 
 int /*<<< orphan*/  FUNC11 (struct s5k5baf*) ; 
 int /*<<< orphan*/  FUNC12 (struct s5k5baf*) ; 
 int FUNC13 (struct s5k5baf*) ; 
 struct s5k5baf* FUNC14 (struct v4l2_subdev*) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct v4l2_subdev *sd, int on)
{
	struct s5k5baf *state = FUNC14(sd);
	int ret = 0;

	FUNC0(&state->lock);

	if (state->power != !on)
		goto out;

	if (on) {
		if (state->fw == NULL)
			FUNC11(state);

		FUNC10(state);
		ret = FUNC13(state);
		if (ret < 0)
			goto out;

		FUNC3(state);
		FUNC4(state);
		FUNC9(state, REG_SET_HOST_INT, 1);
		FUNC7(state);

		ret = FUNC8(state);
		if (ret < 0)
			goto out;

		FUNC6(state);
		FUNC5(state);

		ret = FUNC2(state);
		if (!ret)
			state->power++;
	} else {
		FUNC12(state);
		state->power--;
	}

out:
	FUNC1(&state->lock);

	if (!ret && on)
		ret = FUNC15(&state->ctrls.handler);

	return ret;
}