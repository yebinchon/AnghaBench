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
struct cx25840_state {int /*<<< orphan*/ * ir_state; } ;
struct cx25840_ir_state {int /*<<< orphan*/  rx_kfifo; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cx25840_ir_state* FUNC3 (struct v4l2_subdev*) ; 
 struct cx25840_state* FUNC4 (struct v4l2_subdev*) ; 

int FUNC5(struct v4l2_subdev *sd)
{
	struct cx25840_state *state = FUNC4(sd);
	struct cx25840_ir_state *ir_state = FUNC3(sd);

	if (ir_state == NULL)
		return -ENODEV;

	FUNC0(sd);
	FUNC1(sd);

	FUNC2(&ir_state->rx_kfifo);
	state->ir_state = NULL;
	return 0;
}