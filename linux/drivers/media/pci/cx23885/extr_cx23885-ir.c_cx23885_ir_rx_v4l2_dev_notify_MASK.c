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
typedef  int u32 ;
struct v4l2_subdev {int /*<<< orphan*/  v4l2_dev; } ;
struct cx23885_dev {unsigned long ir_rx_notifications; int /*<<< orphan*/  ir_rx_work; struct v4l2_subdev* sd_cx25840; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX23885_IR_RX_END_OF_RX_DETECTED ; 
 int /*<<< orphan*/  CX23885_IR_RX_FIFO_SERVICE_REQ ; 
 int /*<<< orphan*/  CX23885_IR_RX_HW_FIFO_OVERRUN ; 
 int /*<<< orphan*/  CX23885_IR_RX_SW_FIFO_OVERRUN ; 
 int V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED ; 
 int V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ ; 
 int V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN ; 
 int V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 
 struct cx23885_dev* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct v4l2_subdev *sd, u32 events)
{
	struct cx23885_dev *dev = FUNC3(sd->v4l2_dev);
	unsigned long *notifications = &dev->ir_rx_notifications;

	if (events & V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ)
		FUNC2(CX23885_IR_RX_FIFO_SERVICE_REQ, notifications);
	if (events & V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED)
		FUNC2(CX23885_IR_RX_END_OF_RX_DETECTED, notifications);
	if (events & V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN)
		FUNC2(CX23885_IR_RX_HW_FIFO_OVERRUN, notifications);
	if (events & V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN)
		FUNC2(CX23885_IR_RX_SW_FIFO_OVERRUN, notifications);

	/*
	 * For the integrated AV core, we are already in a workqueue context.
	 * For the CX23888 integrated IR, we are in an interrupt context.
	 */
	if (sd == dev->sd_cx25840)
		FUNC0(&dev->ir_rx_work);
	else
		FUNC1(&dev->ir_rx_work);
}