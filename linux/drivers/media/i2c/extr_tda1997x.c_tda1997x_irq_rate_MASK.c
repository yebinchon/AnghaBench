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
typedef  int u8 ;
struct v4l2_subdev {int dummy; } ;
struct tda1997x_state {int activity_status; scalar_t__ chip_revision; int* input_detect; int /*<<< orphan*/  client; struct v4l2_subdev sd; } ;

/* Variables and functions */
 int MASK_RATE_A_ST ; 
 int MASK_RATE_B_ST ; 
 int PIX_REPEAT_MASK_REP ; 
 int PIX_REPEAT_MASK_UP_SEL ; 
 int /*<<< orphan*/  REG_INT_FLG_CLR_RATE ; 
 int /*<<< orphan*/  REG_PIX_REPEAT ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tda1997x_ev_fmt ; 
 int FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (struct tda1997x_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_subdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC6(struct tda1997x_state *state, u8 *flags)
{
	struct v4l2_subdev *sd = &state->sd;
	u8 reg, source;

	u8 irq_status;

	source = FUNC0(sd, REG_INT_FLG_CLR_RATE);
	FUNC1(sd, REG_INT_FLG_CLR_RATE, source);

	/* read status regs */
	irq_status = FUNC2(sd);

	/*
	 * read clock status reg until INT_FLG_CLR_RATE is still 0
	 * after the read to make sure its the last one
	 */
	reg = source;
	while (reg != 0) {
		irq_status = FUNC2(sd);
		reg = FUNC0(sd, REG_INT_FLG_CLR_RATE);
		FUNC1(sd, REG_INT_FLG_CLR_RATE, reg);
		source |= reg;
	}

	/* we only pay attention to stability change events */
	if (source & (MASK_RATE_A_ST | MASK_RATE_B_ST)) {
		int input = (source & MASK_RATE_A_ST)?0:1;
		u8 mask = 1<<input;

		/* state change */
		if ((irq_status & mask) != (state->activity_status & mask)) {
			/* activity lost */
			if ((irq_status & mask) == 0) {
				FUNC5(state->client,
					 "HDMI-%c: Digital Activity Lost\n",
					 input+'A');

				/* bypass up/down sampler and pixel repeater */
				reg = FUNC0(sd, REG_PIX_REPEAT);
				reg &= ~PIX_REPEAT_MASK_UP_SEL;
				reg &= ~PIX_REPEAT_MASK_REP;
				FUNC1(sd, REG_PIX_REPEAT, reg);

				if (state->chip_revision == 0)
					FUNC3(state);

				state->input_detect[input] = 0;
				FUNC4(sd, &tda1997x_ev_fmt);
			}

			/* activity detected */
			else {
				FUNC5(state->client,
					 "HDMI-%c: Digital Activity Detected\n",
					 input+'A');
				state->input_detect[input] = 1;
			}

			/* hold onto current state */
			state->activity_status = (irq_status & mask);
		}
	}
}