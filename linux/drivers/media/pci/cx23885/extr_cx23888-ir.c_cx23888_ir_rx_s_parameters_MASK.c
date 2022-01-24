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
typedef  union cx23888_ir_fifo_rec {int dummy; } cx23888_ir_fifo_rec ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct v4l2_subdev_ir_parameters {scalar_t__ mode; int bytes_per_data_element; int duty_cycle; int enable; scalar_t__ interrupt_enable; int /*<<< orphan*/  invert_level; int /*<<< orphan*/  resolution; int /*<<< orphan*/  noise_filter_min_width; scalar_t__ max_pulse_width; int /*<<< orphan*/  carrier_range_upper; int /*<<< orphan*/  carrier_range_lower; int /*<<< orphan*/  carrier_freq; int /*<<< orphan*/  modulation; scalar_t__ shutdown; } ;
struct v4l2_subdev {int dummy; } ;
struct cx23888_ir_state {int /*<<< orphan*/  rx_params_lock; int /*<<< orphan*/  rx_kfifo_lock; int /*<<< orphan*/  rx_kfifo; int /*<<< orphan*/  rx_invert; int /*<<< orphan*/  rxclk_divider; struct v4l2_subdev_ir_parameters rx_params; struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNTRL_EDG_BOTH ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FIFO_RXTX ; 
 int IRQEN_ROE ; 
 int IRQEN_RSE ; 
 int IRQEN_RTE ; 
 int /*<<< orphan*/  RX_FIFO_HALF_FULL ; 
 scalar_t__ V4L2_SUBDEV_IR_MODE_PULSE_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cx23885_dev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cx23885_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC8 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cx23885_dev*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct cx23885_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct cx23885_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 struct cx23888_ir_state* FUNC18 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC19(struct v4l2_subdev *sd,
				      struct v4l2_subdev_ir_parameters *p)
{
	struct cx23888_ir_state *state = FUNC18(sd);
	struct cx23885_dev *dev = state->dev;
	struct v4l2_subdev_ir_parameters *o = &state->rx_params;
	u16 rxclk_divider;

	if (p->shutdown)
		return FUNC7(sd);

	if (p->mode != V4L2_SUBDEV_IR_MODE_PULSE_WIDTH)
		return -ENOSYS;

	FUNC11(&state->rx_params_lock);

	o->shutdown = p->shutdown;

	o->mode = p->mode = V4L2_SUBDEV_IR_MODE_PULSE_WIDTH;

	o->bytes_per_data_element = p->bytes_per_data_element
				  = sizeof(union cx23888_ir_fifo_rec);

	/* Before we tweak the hardware, we have to disable the receiver */
	FUNC9(dev, 0);
	FUNC3(dev, false);

	FUNC2(dev, p->modulation);
	o->modulation = p->modulation;

	if (p->modulation) {
		p->carrier_freq = FUNC14(dev, p->carrier_freq,
						     &rxclk_divider);

		o->carrier_freq = p->carrier_freq;

		o->duty_cycle = p->duty_cycle = 50;

		FUNC5(dev, p->carrier_freq,
					    &p->carrier_range_lower,
					    &p->carrier_range_upper);
		o->carrier_range_lower = p->carrier_range_lower;
		o->carrier_range_upper = p->carrier_range_upper;

		p->max_pulse_width =
			(u32) FUNC13(FIFO_RXTX, rxclk_divider);
	} else {
		p->max_pulse_width =
			    FUNC15(dev, p->max_pulse_width,
						       &rxclk_divider);
	}
	o->max_pulse_width = p->max_pulse_width;
	FUNC0(&state->rxclk_divider, rxclk_divider);

	p->noise_filter_min_width =
			  FUNC8(dev, p->noise_filter_min_width);
	o->noise_filter_min_width = p->noise_filter_min_width;

	p->resolution = FUNC1(rxclk_divider);
	o->resolution = p->resolution;

	/* FIXME - make this dependent on resolution for better performance */
	FUNC4(dev, RX_FIFO_HALF_FULL);

	FUNC6(dev, CNTRL_EDG_BOTH);

	o->invert_level = p->invert_level;
	FUNC0(&state->rx_invert, p->invert_level);

	o->interrupt_enable = p->interrupt_enable;
	o->enable = p->enable;
	if (p->enable) {
		unsigned long flags;

		FUNC16(&state->rx_kfifo_lock, flags);
		FUNC10(&state->rx_kfifo);
		/* reset tx_fifo too if there is one... */
		FUNC17(&state->rx_kfifo_lock, flags);
		if (p->interrupt_enable)
			FUNC9(dev, IRQEN_RSE | IRQEN_RTE | IRQEN_ROE);
		FUNC3(dev, p->enable);
	}

	FUNC12(&state->rx_params_lock);
	return 0;
}