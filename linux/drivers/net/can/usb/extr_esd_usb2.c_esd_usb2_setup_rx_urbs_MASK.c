#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;
struct esd_usb2 {int rxinitdone; TYPE_2__* udev; int /*<<< orphan*/  rx_submitted; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_RX_URBS ; 
 int /*<<< orphan*/  RX_BUFFER_SIZE ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  esd_usb2_read_bulk_callback ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct esd_usb2*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int FUNC9 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*) ; 

__attribute__((used)) static int FUNC11(struct esd_usb2 *dev)
{
	int i, err = 0;

	if (dev->rxinitdone)
		return 0;

	for (i = 0; i < MAX_RX_URBS; i++) {
		struct urb *urb = NULL;
		u8 *buf = NULL;

		/* create a URB, and a buffer for it */
		urb = FUNC3(0, GFP_KERNEL);
		if (!urb) {
			err = -ENOMEM;
			break;
		}

		buf = FUNC2(dev->udev, RX_BUFFER_SIZE, GFP_KERNEL,
					 &urb->transfer_dma);
		if (!buf) {
			FUNC1(dev->udev->dev.parent,
				 "No memory left for USB buffer\n");
			err = -ENOMEM;
			goto freeurb;
		}

		FUNC5(urb, dev->udev,
				  FUNC8(dev->udev, 1),
				  buf, RX_BUFFER_SIZE,
				  esd_usb2_read_bulk_callback, dev);
		urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
		FUNC4(urb, &dev->rx_submitted);

		err = FUNC9(urb, GFP_KERNEL);
		if (err) {
			FUNC10(urb);
			FUNC6(dev->udev, RX_BUFFER_SIZE, buf,
					  urb->transfer_dma);
		}

freeurb:
		/* Drop reference, USB core will take care of freeing it */
		FUNC7(urb);
		if (err)
			break;
	}

	/* Did we submit any URBs */
	if (i == 0) {
		FUNC0(dev->udev->dev.parent, "couldn't setup read URBs\n");
		return err;
	}

	/* Warn if we've couldn't transmit all the URBs */
	if (i < MAX_RX_URBS) {
		FUNC1(dev->udev->dev.parent,
			 "rx performance may be slow\n");
	}

	dev->rxinitdone = 1;
	return 0;
}