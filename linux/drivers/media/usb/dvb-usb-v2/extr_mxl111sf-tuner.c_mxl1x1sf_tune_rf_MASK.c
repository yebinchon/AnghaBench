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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mxl111sf_tuner_state {TYPE_1__* cfg; } ;
struct mxl111sf_reg_ctrl_info {int dummy; } ;
struct dvb_frontend {struct mxl111sf_tuner_state* tuner_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ant_hunt ) (struct dvb_frontend*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int MXL_DEV_MODE_MASK ; 
 int /*<<< orphan*/  MXL_MODE_REG ; 
 int MXL_TUNER_MODE ; 
 int /*<<< orphan*/  START_TUNE_REG ; 
 struct mxl111sf_reg_ctrl_info* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mxl111sf_tuner_state*,struct mxl111sf_reg_ctrl_info*) ; 
 int FUNC2 (struct mxl111sf_tuner_state*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct mxl111sf_tuner_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mxl111sf_tuner_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct mxl111sf_tuner_state*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct dvb_frontend*) ; 

__attribute__((used)) static int FUNC9(struct dvb_frontend *fe, u32 freq, u8 bw)
{
	struct mxl111sf_tuner_state *state = fe->tuner_priv;
	static struct mxl111sf_reg_ctrl_info *reg_ctrl_array;
	int ret;
	u8 mxl_mode;

	FUNC6("(freq = %d, bw = 0x%x)", freq, bw);

	/* stop tune */
	ret = FUNC3(state, START_TUNE_REG, 0);
	if (FUNC7(ret))
		goto fail;

	/* check device mode */
	ret = FUNC2(state, MXL_MODE_REG, &mxl_mode);
	if (FUNC7(ret))
		goto fail;

	/* Fill out registers for channel tune */
	reg_ctrl_array = FUNC0(freq, bw);
	if (!reg_ctrl_array)
		return -EINVAL;

	ret = FUNC1(state, reg_ctrl_array);
	if (FUNC7(ret))
		goto fail;

	if ((mxl_mode & MXL_DEV_MODE_MASK) == MXL_TUNER_MODE) {
		/* IF tuner mode only */
		FUNC5(state, 0);
		FUNC5(state, 1);
		FUNC4(state);
	}

	ret = FUNC3(state, START_TUNE_REG, 1);
	if (FUNC7(ret))
		goto fail;

	if (state->cfg->ant_hunt)
		state->cfg->ant_hunt(fe);
fail:
	return ret;
}