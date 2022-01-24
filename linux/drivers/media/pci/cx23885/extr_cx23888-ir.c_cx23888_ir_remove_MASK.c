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
struct cx23888_ir_state {int /*<<< orphan*/  rx_kfifo; } ;
struct cx23885_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX23885_HW_888_IR ; 
 int ENODEV ; 
 struct v4l2_subdev* FUNC0 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cx23888_ir_state*) ; 
 struct cx23888_ir_state* FUNC5 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_subdev*) ; 

int FUNC7(struct cx23885_dev *dev)
{
	struct v4l2_subdev *sd;
	struct cx23888_ir_state *state;

	sd = FUNC0(dev, CX23885_HW_888_IR);
	if (sd == NULL)
		return -ENODEV;

	FUNC1(sd);
	FUNC2(sd);

	state = FUNC5(sd);
	FUNC6(sd);
	FUNC3(&state->rx_kfifo);
	FUNC4(state);
	/* Nothing more to free() as state held the actual v4l2_subdev object */
	return 0;
}