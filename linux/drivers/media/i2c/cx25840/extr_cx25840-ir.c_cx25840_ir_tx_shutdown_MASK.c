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
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int shutdown; } ;
struct cx25840_ir_state {int /*<<< orphan*/  tx_params_lock; TYPE_1__ tx_params; struct i2c_client* c; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX25840_IR_TXCLK_REG ; 
 int ENODEV ; 
 int /*<<< orphan*/  TXCLK_TCD ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct cx25840_ir_state* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd)
{
	struct cx25840_ir_state *ir_state = FUNC6(sd);
	struct i2c_client *c;

	if (ir_state == NULL)
		return -ENODEV;

	c = ir_state->c;
	FUNC4(&ir_state->tx_params_lock);

	/* Disable or slow down all IR Tx circuits and counters */
	FUNC3(sd, 0);
	FUNC0(c, false);
	FUNC1(c, false);
	FUNC2(c, CX25840_IR_TXCLK_REG, TXCLK_TCD);

	ir_state->tx_params.shutdown = true;

	FUNC5(&ir_state->tx_params_lock);
	return 0;
}