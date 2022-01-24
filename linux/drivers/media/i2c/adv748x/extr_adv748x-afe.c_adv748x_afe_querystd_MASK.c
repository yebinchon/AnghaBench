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
struct adv748x_state {int /*<<< orphan*/  mutex; } ;
struct adv748x_afe {int /*<<< orphan*/  curr_norm; scalar_t__ streaming; } ;

/* Variables and functions */
 int ADV748X_AFE_STD_AD_PAL_BG_NTSC_J_SECAM ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct adv748x_state*,int) ; 
 int FUNC1 (struct adv748x_afe*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct adv748x_state* FUNC3 (struct adv748x_afe*) ; 
 struct adv748x_afe* FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct v4l2_subdev *sd, v4l2_std_id *std)
{
	struct adv748x_afe *afe = FUNC4(sd);
	struct adv748x_state *state = FUNC3(afe);
	int afe_std;
	int ret;

	FUNC6(&state->mutex);

	if (afe->streaming) {
		ret = -EBUSY;
		goto unlock;
	}

	/* Set auto detect mode */
	FUNC0(state,
				       ADV748X_AFE_STD_AD_PAL_BG_NTSC_J_SECAM);

	FUNC5(100);

	/* Read detected standard */
	ret = FUNC1(afe, NULL, std);

	afe_std = FUNC2(afe->curr_norm);
	if (afe_std < 0)
		goto unlock;

	/* Restore original state */
	FUNC0(state, afe_std);

unlock:
	FUNC7(&state->mutex);

	return ret;
}