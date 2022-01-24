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
union cx23888_ir_fifo_rec {int hw_fifo_data; } ;
typedef  int u32 ;
struct v4l2_subdev {int dummy; } ;
struct cx23888_ir_state {int /*<<< orphan*/  rx_kfifo_lock; int /*<<< orphan*/  rx_kfifo; struct cx23885_dev* dev; } ;
struct cx23885_dev {int dummy; } ;

/* Variables and functions */
 int CNTRL_RFE ; 
 int CNTRL_RXE ; 
 int /*<<< orphan*/  CX23888_IR_CNTRL_REG ; 
 int /*<<< orphan*/  CX23888_IR_FIFO_REG ; 
 int /*<<< orphan*/  CX23888_IR_IRQEN_REG ; 
 int CX23888_IR_RX_KFIFO_SIZE ; 
 int /*<<< orphan*/  CX23888_IR_STATS_REG ; 
 int FIFO_RX_DEPTH ; 
 int FIFO_RX_NDV ; 
 int IRQEN_ROE ; 
 int IRQEN_RSE ; 
 int IRQEN_RTE ; 
 int IRQEN_TSE ; 
 int STATS_RBY ; 
 int STATS_ROR ; 
 int STATS_RSR ; 
 int STATS_RTO ; 
 int STATS_TBY ; 
 int STATS_TSR ; 
 int V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED ; 
 int V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ ; 
 int V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN ; 
 int /*<<< orphan*/  V4L2_SUBDEV_IR_RX_NOTIFY ; 
 int V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN ; 
 int V4L2_SUBDEV_IR_TX_FIFO_SERVICE_REQ ; 
 int /*<<< orphan*/  V4L2_SUBDEV_IR_TX_NOTIFY ; 
 int FUNC0 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx23885_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ir_888_debug ; 
 int /*<<< orphan*/  FUNC2 (struct cx23885_dev*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,unsigned char*,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct cx23888_ir_state* FUNC7 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,struct v4l2_subdev*,char*,char*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_subdev*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC11(struct v4l2_subdev *sd, u32 status,
				  bool *handled)
{
	struct cx23888_ir_state *state = FUNC7(sd);
	struct cx23885_dev *dev = state->dev;
	unsigned long flags;

	u32 cntrl = FUNC0(dev, CX23888_IR_CNTRL_REG);
	u32 irqen = FUNC0(dev, CX23888_IR_IRQEN_REG);
	u32 stats = FUNC0(dev, CX23888_IR_STATS_REG);

	union cx23888_ir_fifo_rec rx_data[FIFO_RX_DEPTH];
	unsigned int i, j, k;
	u32 events, v;
	int tsr, rsr, rto, ror, tse, rse, rte, roe, kror;

	tsr = stats & STATS_TSR; /* Tx FIFO Service Request */
	rsr = stats & STATS_RSR; /* Rx FIFO Service Request */
	rto = stats & STATS_RTO; /* Rx Pulse Width Timer Time Out */
	ror = stats & STATS_ROR; /* Rx FIFO Over Run */

	tse = irqen & IRQEN_TSE; /* Tx FIFO Service Request IRQ Enable */
	rse = irqen & IRQEN_RSE; /* Rx FIFO Service Request IRQ Enable */
	rte = irqen & IRQEN_RTE; /* Rx Pulse Width Timer Time Out IRQ Enable */
	roe = irqen & IRQEN_ROE; /* Rx FIFO Over Run IRQ Enable */

	*handled = false;
	FUNC8(2, ir_888_debug, sd, "IRQ Status:  %s %s %s %s %s %s\n",
		 tsr ? "tsr" : "   ", rsr ? "rsr" : "   ",
		 rto ? "rto" : "   ", ror ? "ror" : "   ",
		 stats & STATS_TBY ? "tby" : "   ",
		 stats & STATS_RBY ? "rby" : "   ");

	FUNC8(2, ir_888_debug, sd, "IRQ Enables: %s %s %s %s\n",
		 tse ? "tse" : "   ", rse ? "rse" : "   ",
		 rte ? "rte" : "   ", roe ? "roe" : "   ");

	/*
	 * Transmitter interrupt service
	 */
	if (tse && tsr) {
		/*
		 * TODO:
		 * Check the watermark threshold setting
		 * Pull FIFO_TX_DEPTH or FIFO_TX_DEPTH/2 entries from tx_kfifo
		 * Push the data to the hardware FIFO.
		 * If there was nothing more to send in the tx_kfifo, disable
		 *	the TSR IRQ and notify the v4l2_device.
		 * If there was something in the tx_kfifo, check the tx_kfifo
		 *      level and notify the v4l2_device, if it is low.
		 */
		/* For now, inhibit TSR interrupt until Tx is implemented */
		FUNC2(dev, 0);
		events = V4L2_SUBDEV_IR_TX_FIFO_SERVICE_REQ;
		FUNC10(sd, V4L2_SUBDEV_IR_TX_NOTIFY, &events);
		*handled = true;
	}

	/*
	 * Receiver interrupt service
	 */
	kror = 0;
	if ((rse && rsr) || (rte && rto)) {
		/*
		 * Receive data on RSR to clear the STATS_RSR.
		 * Receive data on RTO, since we may not have yet hit the RSR
		 * watermark when we receive the RTO.
		 */
		for (i = 0, v = FIFO_RX_NDV;
		     (v & FIFO_RX_NDV) && !kror; i = 0) {
			for (j = 0;
			     (v & FIFO_RX_NDV) && j < FIFO_RX_DEPTH; j++) {
				v = FUNC0(dev, CX23888_IR_FIFO_REG);
				rx_data[i].hw_fifo_data = v & ~FIFO_RX_NDV;
				i++;
			}
			if (i == 0)
				break;
			j = i * sizeof(union cx23888_ir_fifo_rec);
			k = FUNC3(&state->rx_kfifo,
				      (unsigned char *) rx_data, j,
				      &state->rx_kfifo_lock);
			if (k != j)
				kror++; /* rx_kfifo over run */
		}
		*handled = true;
	}

	events = 0;
	v = 0;
	if (kror) {
		events |= V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN;
		FUNC9(sd, "IR receiver software FIFO overrun\n");
	}
	if (roe && ror) {
		/*
		 * The RX FIFO Enable (CNTRL_RFE) must be toggled to clear
		 * the Rx FIFO Over Run status (STATS_ROR)
		 */
		v |= CNTRL_RFE;
		events |= V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN;
		FUNC9(sd, "IR receiver hardware FIFO overrun\n");
	}
	if (rte && rto) {
		/*
		 * The IR Receiver Enable (CNTRL_RXE) must be toggled to clear
		 * the Rx Pulse Width Timer Time Out (STATS_RTO)
		 */
		v |= CNTRL_RXE;
		events |= V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED;
	}
	if (v) {
		/* Clear STATS_ROR & STATS_RTO as needed by resetting hardware */
		FUNC1(dev, CX23888_IR_CNTRL_REG, cntrl & ~v);
		FUNC1(dev, CX23888_IR_CNTRL_REG, cntrl);
		*handled = true;
	}

	FUNC5(&state->rx_kfifo_lock, flags);
	if (FUNC4(&state->rx_kfifo) >= CX23888_IR_RX_KFIFO_SIZE / 2)
		events |= V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ;
	FUNC6(&state->rx_kfifo_lock, flags);

	if (events)
		FUNC10(sd, V4L2_SUBDEV_IR_RX_NOTIFY, &events);
	return 0;
}