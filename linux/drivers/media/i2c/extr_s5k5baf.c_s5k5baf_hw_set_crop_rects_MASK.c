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
typedef  int u16 ;
struct v4l2_rect {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct s5k5baf {int error; int /*<<< orphan*/  req_fiv; struct v4l2_rect crop_source; int /*<<< orphan*/  apply_cfg; int /*<<< orphan*/  sd; int /*<<< orphan*/  compose; struct v4l2_rect crop_sink; } ;

/* Variables and functions */
#define  CFG_ERROR_RANGE 128 
 int EINVAL ; 
 int /*<<< orphan*/  REG_G_INPUTS_CHANGE_REQ ; 
 int /*<<< orphan*/  REG_G_PREVREQ_IN_WIDTH ; 
 int /*<<< orphan*/  REG_G_PREVZOOM_IN_WIDTH ; 
 int /*<<< orphan*/  REG_G_PREV_CFG_BYPASS_CHANGED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S5K5BAF_MAX_FR_TIME ; 
 int FUNC1 (struct s5k5baf*) ; 
 int FUNC2 (struct s5k5baf*) ; 
 int /*<<< orphan*/  FUNC3 (struct s5k5baf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct s5k5baf*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_rect*,struct v4l2_rect*,struct v4l2_rect*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct s5k5baf*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct s5k5baf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC9(struct s5k5baf *state)
{
	struct v4l2_rect *p, r;
	u16 err;
	int ret;

	p = &state->crop_sink;
	FUNC7(state, REG_G_PREVREQ_IN_WIDTH, p->width, p->height,
			  p->left, p->top);

	FUNC5(&r, &state->crop_source, &state->crop_sink,
			&state->compose);
	FUNC7(state, REG_G_PREVZOOM_IN_WIDTH, r.width, r.height,
			  r.left, r.top);

	FUNC6(state, 500, REG_G_INPUTS_CHANGE_REQ);
	FUNC6(state, 500, REG_G_PREV_CFG_BYPASS_CHANGED);
	err = FUNC2(state);
	ret = FUNC1(state);
	if (ret < 0)
		return ret;

	switch (err) {
	case 0:
		break;
	case CFG_ERROR_RANGE:
		/* retry crop with frame interval set to max */
		FUNC3(state, S5K5BAF_MAX_FR_TIME);
		err = FUNC2(state);
		ret = FUNC1(state);
		if (ret < 0)
			return ret;
		if (err) {
			FUNC8(&state->sd,
				 "crop error on max frame interval: %d\n", err);
			state->error = -EINVAL;
		}
		FUNC3(state, state->req_fiv);
		FUNC4(state);
		break;
	default:
		FUNC8(&state->sd, "crop error: %d\n", err);
		return -EINVAL;
	}

	if (!state->apply_cfg)
		return 0;

	p = &state->crop_source;
	FUNC7(state, FUNC0(0), p->width, p->height);
	FUNC3(state, state->req_fiv);
	FUNC4(state);

	return FUNC1(state);
}