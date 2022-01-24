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
struct v4l2_subdev_ir_parameters {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct cx25840_state {struct cx25840_ir_state* ir_state; TYPE_1__* c; } ;
struct cx25840_ir_state {int /*<<< orphan*/  tx_params_lock; int /*<<< orphan*/  rx_params_lock; TYPE_1__* c; int /*<<< orphan*/  rx_kfifo; int /*<<< orphan*/  rx_kfifo_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX25840_IR_IRQEN_REG ; 
 int /*<<< orphan*/  CX25840_IR_RX_KFIFO_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQEN_MSK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct v4l2_subdev_ir_parameters default_rx_params ; 
 struct v4l2_subdev_ir_parameters default_tx_params ; 
 struct cx25840_ir_state* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ir ; 
 scalar_t__ FUNC2 (struct cx25840_state*) ; 
 scalar_t__ FUNC3 (struct cx25840_state*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rx_s_parameters ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct cx25840_state* FUNC7 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  tx_s_parameters ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_subdev_ir_parameters*) ; 

int FUNC9(struct v4l2_subdev *sd)
{
	struct cx25840_state *state = FUNC7(sd);
	struct cx25840_ir_state *ir_state;
	struct v4l2_subdev_ir_parameters default_params;

	/* Only init the IR controller for the CX2388[57] AV Core for now */
	if (!(FUNC2(state) || FUNC3(state)))
		return 0;

	ir_state = FUNC1(&state->c->dev, sizeof(*ir_state), GFP_KERNEL);
	if (ir_state == NULL)
		return -ENOMEM;

	FUNC6(&ir_state->rx_kfifo_lock);
	if (FUNC4(&ir_state->rx_kfifo,
			CX25840_IR_RX_KFIFO_SIZE, GFP_KERNEL))
		return -ENOMEM;

	ir_state->c = state->c;
	state->ir_state = ir_state;

	/* Ensure no interrupts arrive yet */
	if (FUNC2(state) || FUNC3(state))
		FUNC0(ir_state->c, CX25840_IR_IRQEN_REG, IRQEN_MSK);
	else
		FUNC0(ir_state->c, CX25840_IR_IRQEN_REG, 0);

	FUNC5(&ir_state->rx_params_lock);
	default_params = default_rx_params;
	FUNC8(sd, ir, rx_s_parameters, &default_params);

	FUNC5(&ir_state->tx_params_lock);
	default_params = default_tx_params;
	FUNC8(sd, ir, tx_s_parameters, &default_params);

	return 0;
}