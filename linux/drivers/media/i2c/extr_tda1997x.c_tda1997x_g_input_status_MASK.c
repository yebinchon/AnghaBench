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
typedef  int u32 ;
typedef  int u16 ;
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {int /*<<< orphan*/  lock; int /*<<< orphan*/ * input_detect; } ;

/* Variables and functions */
 int MASK_HPER ; 
 int MASK_HSWIDTH ; 
 int MASK_VPER ; 
 int /*<<< orphan*/  REG_HS_WIDTH ; 
 int /*<<< orphan*/  REG_H_PER ; 
 int /*<<< orphan*/  REG_V_PER ; 
 int V4L2_IN_ST_NO_SIGNAL ; 
 int V4L2_IN_ST_NO_SYNC ; 
 int /*<<< orphan*/  debug ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct tda1997x_state* FUNC4 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC6(struct v4l2_subdev *sd, u32 *status)
{
	struct tda1997x_state *state = FUNC4(sd);
	u32 vper;
	u16 hper;
	u16 hsper;

	FUNC2(&state->lock);
	vper = FUNC1(sd, REG_V_PER) & MASK_VPER;
	hper = FUNC0(sd, REG_H_PER) & MASK_HPER;
	hsper = FUNC0(sd, REG_HS_WIDTH) & MASK_HSWIDTH;
	/*
	 * The tda1997x supports A/B inputs but only a single output.
	 * The irq handler monitors for timing changes on both inputs and
	 * sets the input_detect array to 0|1 depending on signal presence.
	 * I believe selection of A vs B is automatic.
	 *
	 * The vper/hper/hsper registers provide the frame period, line period
	 * and horiz sync period (units of MCLK clock cycles (27MHz)) and
	 * testing shows these values to be random if no signal is present
	 * or locked.
	 */
	FUNC5(1, debug, sd, "inputs:%d/%d timings:%d/%d/%d\n",
		 state->input_detect[0], state->input_detect[1],
		 vper, hper, hsper);
	if (!state->input_detect[0] && !state->input_detect[1])
		*status = V4L2_IN_ST_NO_SIGNAL;
	else if (!vper || !hper || !hsper)
		*status = V4L2_IN_ST_NO_SYNC;
	else
		*status = 0;
	FUNC3(&state->lock);

	return 0;
}