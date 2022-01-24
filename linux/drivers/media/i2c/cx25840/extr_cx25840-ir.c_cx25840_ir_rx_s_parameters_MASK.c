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
struct v4l2_subdev_ir_parameters {scalar_t__ mode; int bytes_per_data_element; int duty_cycle; int enable; scalar_t__ interrupt_enable; int /*<<< orphan*/  invert_level; int /*<<< orphan*/  resolution; int /*<<< orphan*/  noise_filter_min_width; scalar_t__ max_pulse_width; int /*<<< orphan*/  carrier_range_upper; int /*<<< orphan*/  carrier_range_lower; int /*<<< orphan*/  carrier_freq; int /*<<< orphan*/  modulation; scalar_t__ shutdown; } ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_ir_state {int /*<<< orphan*/  rx_params_lock; int /*<<< orphan*/  rx_kfifo_lock; int /*<<< orphan*/  rx_kfifo; int /*<<< orphan*/  rx_invert; int /*<<< orphan*/  rxclk_divider; struct v4l2_subdev_ir_parameters rx_params; struct i2c_client* c; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNTRL_EDG_BOTH ; 
 int ENODEV ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FIFO_RXTX ; 
 int IRQEN_ROE ; 
 int IRQEN_RSE ; 
 int IRQEN_RTE ; 
 int /*<<< orphan*/  RX_FIFO_HALF_FULL ; 
 scalar_t__ V4L2_SUBDEV_IR_MODE_PULSE_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_subdev*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct i2c_client*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 struct cx25840_ir_state* FUNC18 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC19(struct v4l2_subdev *sd,
				      struct v4l2_subdev_ir_parameters *p)
{
	struct cx25840_ir_state *ir_state = FUNC18(sd);
	struct i2c_client *c;
	struct v4l2_subdev_ir_parameters *o;
	u16 rxclk_divider;

	if (ir_state == NULL)
		return -ENODEV;

	if (p->shutdown)
		return FUNC7(sd);

	if (p->mode != V4L2_SUBDEV_IR_MODE_PULSE_WIDTH)
		return -ENOSYS;

	c = ir_state->c;
	o = &ir_state->rx_params;

	FUNC11(&ir_state->rx_params_lock);

	o->shutdown = p->shutdown;

	p->mode = V4L2_SUBDEV_IR_MODE_PULSE_WIDTH;
	o->mode = p->mode;

	p->bytes_per_data_element = sizeof(union cx25840_ir_fifo_rec);
	o->bytes_per_data_element = p->bytes_per_data_element;

	/* Before we tweak the hardware, we have to disable the receiver */
	FUNC9(sd, 0);
	FUNC3(c, false);

	FUNC2(c, p->modulation);
	o->modulation = p->modulation;

	if (p->modulation) {
		p->carrier_freq = FUNC14(c, p->carrier_freq,
						     &rxclk_divider);

		o->carrier_freq = p->carrier_freq;

		p->duty_cycle = 50;
		o->duty_cycle = p->duty_cycle;

		FUNC5(c, p->carrier_freq,
					    &p->carrier_range_lower,
					    &p->carrier_range_upper);
		o->carrier_range_lower = p->carrier_range_lower;
		o->carrier_range_upper = p->carrier_range_upper;

		p->max_pulse_width =
			(u32) FUNC13(FIFO_RXTX, rxclk_divider);
	} else {
		p->max_pulse_width =
			    FUNC15(c, p->max_pulse_width,
						       &rxclk_divider);
	}
	o->max_pulse_width = p->max_pulse_width;
	FUNC0(&ir_state->rxclk_divider, rxclk_divider);

	p->noise_filter_min_width =
			    FUNC8(c, p->noise_filter_min_width);
	o->noise_filter_min_width = p->noise_filter_min_width;

	p->resolution = FUNC1(rxclk_divider);
	o->resolution = p->resolution;

	/* FIXME - make this dependent on resolution for better performance */
	FUNC4(c, RX_FIFO_HALF_FULL);

	FUNC6(c, CNTRL_EDG_BOTH);

	o->invert_level = p->invert_level;
	FUNC0(&ir_state->rx_invert, p->invert_level);

	o->interrupt_enable = p->interrupt_enable;
	o->enable = p->enable;
	if (p->enable) {
		unsigned long flags;

		FUNC16(&ir_state->rx_kfifo_lock, flags);
		FUNC10(&ir_state->rx_kfifo);
		FUNC17(&ir_state->rx_kfifo_lock, flags);
		if (p->interrupt_enable)
			FUNC9(sd, IRQEN_RSE | IRQEN_RTE | IRQEN_ROE);
		FUNC3(c, p->enable);
	}

	FUNC12(&ir_state->rx_params_lock);
	return 0;
}