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
struct s5k5baf {int streaming; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct s5k5baf*) ; 
 int /*<<< orphan*/  FUNC3 (struct s5k5baf*) ; 
 int FUNC4 (struct s5k5baf*) ; 
 int /*<<< orphan*/  FUNC5 (struct s5k5baf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct s5k5baf*,int,int) ; 
 struct s5k5baf* FUNC7 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC8(struct v4l2_subdev *sd, int on)
{
	struct s5k5baf *state = FUNC7(sd);
	int ret;

	FUNC0(&state->lock);

	if (state->streaming == !!on) {
		ret = 0;
		goto out;
	}

	if (on) {
		FUNC3(state);
		ret = FUNC4(state);
		if (ret < 0)
			goto out;
		FUNC5(state, 1);
		FUNC6(state, 0xb0cc, 0x000b);
	} else {
		FUNC5(state, 0);
	}
	ret = FUNC2(state);
	if (!ret)
		state->streaming = !state->streaming;

out:
	FUNC1(&state->lock);

	return ret;
}