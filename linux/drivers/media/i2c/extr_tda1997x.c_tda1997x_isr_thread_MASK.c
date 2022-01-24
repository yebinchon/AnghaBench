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
struct tda1997x_state {int /*<<< orphan*/  lock; struct v4l2_subdev sd; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int INTERRUPT_AUDIO ; 
 int INTERRUPT_DDC ; 
 int INTERRUPT_HDCP ; 
 int INTERRUPT_INFO ; 
 int INTERRUPT_RATE ; 
 int INTERRUPT_SUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  REG_INT_FLG_CLR_TOP ; 
 int FUNC0 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tda1997x_state*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct tda1997x_state*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct tda1997x_state*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct tda1997x_state*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct tda1997x_state*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct tda1997x_state*,int*) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *d)
{
	struct tda1997x_state *state = d;
	struct v4l2_subdev *sd = &state->sd;
	u8 flags;

	FUNC1(&state->lock);
	do {
		/* read interrupt flags */
		flags = FUNC0(sd, REG_INT_FLG_CLR_TOP);
		if (flags == 0)
			break;

		/* SUS interrupt source (Input activity events) */
		if (flags & INTERRUPT_SUS)
			FUNC8(state, &flags);
		/* DDC interrupt source (Display Data Channel) */
		else if (flags & INTERRUPT_DDC)
			FUNC4(state, &flags);
		/* RATE interrupt source (Digital Input activity) */
		else if (flags & INTERRUPT_RATE)
			FUNC7(state, &flags);
		/* Infoframe change interrupt */
		else if (flags & INTERRUPT_INFO)
			FUNC6(state, &flags);
		/* Audio interrupt source:
		 *   freq change, DST,OBA,HBR,ASP flags, mute, FIFO err
		 */
		else if (flags & INTERRUPT_AUDIO)
			FUNC3(state, &flags);
		/* HDCP interrupt source (content protection) */
		if (flags & INTERRUPT_HDCP)
			FUNC5(state, &flags);
	} while (flags != 0);
	FUNC2(&state->lock);

	return IRQ_HANDLED;
}