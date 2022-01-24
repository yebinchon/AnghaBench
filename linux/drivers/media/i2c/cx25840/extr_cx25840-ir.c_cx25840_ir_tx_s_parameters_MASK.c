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
typedef  union cx25840_ir_fifo_rec {int dummy; } cx25840_ir_fifo_rec ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct v4l2_subdev_ir_parameters {scalar_t__ mode; int bytes_per_data_element; int enable; scalar_t__ interrupt_enable; int /*<<< orphan*/  invert_level; int /*<<< orphan*/  invert_carrier_sense; int /*<<< orphan*/  resolution; scalar_t__ max_pulse_width; int /*<<< orphan*/  duty_cycle; int /*<<< orphan*/  carrier_freq; int /*<<< orphan*/  modulation; scalar_t__ shutdown; } ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_ir_state {int /*<<< orphan*/  tx_params_lock; int /*<<< orphan*/  txclk_divider; struct v4l2_subdev_ir_parameters tx_params; struct i2c_client* c; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FIFO_RXTX ; 
 int /*<<< orphan*/  IRQEN_TSE ; 
 int /*<<< orphan*/  TX_FIFO_HALF_EMPTY ; 
 scalar_t__ V4L2_SUBDEV_IR_MODE_PULSE_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC8 (struct v4l2_subdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cx25840_ir_state* FUNC12 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC13 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct i2c_client*,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct v4l2_subdev *sd,
				      struct v4l2_subdev_ir_parameters *p)
{
	struct cx25840_ir_state *ir_state = FUNC12(sd);
	struct i2c_client *c;
	struct v4l2_subdev_ir_parameters *o;
	u16 txclk_divider;

	if (ir_state == NULL)
		return -ENODEV;

	if (p->shutdown)
		return FUNC7(sd);

	if (p->mode != V4L2_SUBDEV_IR_MODE_PULSE_WIDTH)
		return -ENOSYS;

	c = ir_state->c;
	o = &ir_state->tx_params;
	FUNC9(&ir_state->tx_params_lock);

	o->shutdown = p->shutdown;

	p->mode = V4L2_SUBDEV_IR_MODE_PULSE_WIDTH;
	o->mode = p->mode;

	p->bytes_per_data_element = sizeof(union cx25840_ir_fifo_rec);
	o->bytes_per_data_element = p->bytes_per_data_element;

	/* Before we tweak the hardware, we have to disable the transmitter */
	FUNC8(sd, 0);
	FUNC3(c, false);

	FUNC5(c, p->modulation);
	o->modulation = p->modulation;

	if (p->modulation) {
		p->carrier_freq = FUNC13(c, p->carrier_freq,
						     &txclk_divider);
		o->carrier_freq = p->carrier_freq;

		p->duty_cycle = FUNC1(c, p->duty_cycle);
		o->duty_cycle = p->duty_cycle;

		p->max_pulse_width =
			(u32) FUNC11(FIFO_RXTX, txclk_divider);
	} else {
		p->max_pulse_width =
			    FUNC14(c, p->max_pulse_width,
						       &txclk_divider);
	}
	o->max_pulse_width = p->max_pulse_width;
	FUNC0(&ir_state->txclk_divider, txclk_divider);

	p->resolution = FUNC2(txclk_divider);
	o->resolution = p->resolution;

	/* FIXME - make this dependent on resolution for better performance */
	FUNC4(c, TX_FIFO_HALF_EMPTY);

	FUNC6(c, p->invert_carrier_sense);
	o->invert_carrier_sense = p->invert_carrier_sense;

	/*
	 * FIXME: we don't have hardware help for IO pin level inversion
	 * here like we have on the CX23888.
	 * Act on this with some mix of logical inversion of data levels,
	 * carrier polarity, and carrier duty cycle.
	 */
	o->invert_level = p->invert_level;

	o->interrupt_enable = p->interrupt_enable;
	o->enable = p->enable;
	if (p->enable) {
		/* reset tx_fifo here */
		if (p->interrupt_enable)
			FUNC8(sd, IRQEN_TSE);
		FUNC3(c, p->enable);
	}

	FUNC10(&ir_state->tx_params_lock);
	return 0;
}