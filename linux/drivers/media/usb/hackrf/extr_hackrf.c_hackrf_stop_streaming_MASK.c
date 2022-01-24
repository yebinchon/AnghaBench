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
struct vb2_queue {scalar_t__ type; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct hackrf_dev {int /*<<< orphan*/  v4l2_lock; int /*<<< orphan*/  flags; struct usb_interface* intf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SET_TRANSCEIVER_MODE ; 
 int /*<<< orphan*/  RX_ON ; 
 int /*<<< orphan*/  TX_ON ; 
 scalar_t__ V4L2_BUF_TYPE_SDR_CAPTURE ; 
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hackrf_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hackrf_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hackrf_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hackrf_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct vb2_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct hackrf_dev* FUNC9 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC10(struct vb2_queue *vq)
{
	struct hackrf_dev *dev = FUNC9(vq);
	struct usb_interface *intf = dev->intf;

	FUNC1(&intf->dev, "\n");

	FUNC7(&dev->v4l2_lock);

	/* stop hardware streaming */
	FUNC2(dev, CMD_SET_TRANSCEIVER_MODE, 0, 0, NULL, 0);

	FUNC5(dev);
	FUNC4(dev);
	FUNC3(dev);

	FUNC6(vq, VB2_BUF_STATE_ERROR);

	if (vq->type == V4L2_BUF_TYPE_SDR_CAPTURE)
		FUNC0(RX_ON, &dev->flags);
	else
		FUNC0(TX_ON, &dev->flags);

	FUNC8(&dev->v4l2_lock);
}