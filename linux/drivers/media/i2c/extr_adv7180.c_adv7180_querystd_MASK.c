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
struct adv7180_state {int /*<<< orphan*/  mutex; int /*<<< orphan*/  curr_norm; scalar_t__ streaming; } ;

/* Variables and functions */
 int ADV7180_STD_AD_PAL_BG_NTSC_J_SECAM ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct adv7180_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct adv7180_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct adv7180_state* FUNC5 (struct v4l2_subdev*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd, v4l2_std_id *std)
{
	struct adv7180_state *state = FUNC5(sd);
	int err = FUNC3(&state->mutex);
	if (err)
		return err;

	if (state->streaming) {
		err = -EBUSY;
		goto unlock;
	}

	err = FUNC1(state,
			ADV7180_STD_AD_PAL_BG_NTSC_J_SECAM);
	if (err)
		goto unlock;

	FUNC2(100);
	FUNC0(state, NULL, std);

	err = FUNC6(state->curr_norm);
	if (err < 0)
		goto unlock;

	err = FUNC1(state, err);

unlock:
	FUNC4(&state->mutex);
	return err;
}