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
struct TYPE_2__ {scalar_t__ interlaced; } ;
struct v4l2_dv_timings {TYPE_1__ bt; } ;
struct adv748x_state {int /*<<< orphan*/  mutex; } ;
struct adv748x_hdmi {struct v4l2_dv_timings timings; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADV748X_CP_VID_ADJ_2 ; 
 int /*<<< orphan*/  ADV748X_CP_VID_ADJ_2_INTERLACED ; 
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_dv_timings*) ; 
 int FUNC1 (struct adv748x_state*,struct v4l2_dv_timings*) ; 
 int /*<<< orphan*/  adv748x_hdmi_timings_cap ; 
 struct adv748x_state* FUNC2 (struct adv748x_hdmi*) ; 
 struct adv748x_hdmi* FUNC3 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct adv748x_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct v4l2_dv_timings*,struct v4l2_dv_timings*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_dv_timings*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct v4l2_subdev *sd,
				     struct v4l2_dv_timings *timings)
{
	struct adv748x_hdmi *hdmi = FUNC3(sd);
	struct adv748x_state *state = FUNC2(hdmi);
	int ret;

	if (!timings)
		return -EINVAL;

	if (FUNC7(&hdmi->timings, timings, 0, false))
		return 0;

	if (!FUNC8(timings, &adv748x_hdmi_timings_cap,
				   NULL, NULL))
		return -ERANGE;

	FUNC0(timings);

	FUNC5(&state->mutex);

	ret = FUNC1(state, timings);
	if (ret)
		goto error;

	hdmi->timings = *timings;

	FUNC4(state, ADV748X_CP_VID_ADJ_2, ADV748X_CP_VID_ADJ_2_INTERLACED,
		  timings->bt.interlaced ?
				  ADV748X_CP_VID_ADJ_2_INTERLACED : 0);

	FUNC6(&state->mutex);

	return 0;

error:
	FUNC6(&state->mutex);
	return ret;
}