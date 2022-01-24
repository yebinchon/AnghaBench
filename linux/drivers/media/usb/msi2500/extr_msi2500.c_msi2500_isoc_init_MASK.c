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
struct urb {int interval; int transfer_flags; int number_of_packets; TYPE_1__* iso_frame_desc; scalar_t__ start_frame; struct msi2500_dev* context; int /*<<< orphan*/  complete; int /*<<< orphan*/  transfer_buffer_length; int /*<<< orphan*/ * transfer_buffer; int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  pipe; int /*<<< orphan*/  dev; } ;
struct msi2500_dev {struct urb** urbs; int /*<<< orphan*/  dev; int /*<<< orphan*/  udev; scalar_t__ isoc_errors; } ;
struct TYPE_2__ {int offset; int length; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ISO_BUFFER_SIZE ; 
 int ISO_FRAMES_PER_DESC ; 
 int ISO_MAX_FRAME_SIZE ; 
 int MAX_ISO_BUFS ; 
 int URB_ISO_ASAP ; 
 int URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct msi2500_dev*) ; 
 int /*<<< orphan*/  msi2500_isoc_handler ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct msi2500_dev *dev)
{
	struct urb *urb;
	int i, j, ret;

	FUNC0(dev->dev, "\n");

	dev->isoc_errors = 0;

	ret = FUNC6(dev->udev, 0, 1);
	if (ret)
		return ret;

	/* Allocate and init Isochronuous urbs */
	for (i = 0; i < MAX_ISO_BUFS; i++) {
		urb = FUNC4(ISO_FRAMES_PER_DESC, GFP_KERNEL);
		if (urb == NULL) {
			FUNC2(dev);
			return -ENOMEM;
		}
		dev->urbs[i] = urb;
		FUNC0(dev->dev, "Allocated URB at 0x%p\n", urb);

		urb->interval = 1;
		urb->dev = dev->udev;
		urb->pipe = FUNC5(dev->udev, 0x81);
		urb->transfer_flags = URB_ISO_ASAP | URB_NO_TRANSFER_DMA_MAP;
		urb->transfer_buffer = FUNC3(dev->udev,
				ISO_BUFFER_SIZE,
				GFP_KERNEL, &urb->transfer_dma);
		if (urb->transfer_buffer == NULL) {
			FUNC1(dev->dev,
				"Failed to allocate urb buffer %d\n", i);
			FUNC2(dev);
			return -ENOMEM;
		}
		urb->transfer_buffer_length = ISO_BUFFER_SIZE;
		urb->complete = msi2500_isoc_handler;
		urb->context = dev;
		urb->start_frame = 0;
		urb->number_of_packets = ISO_FRAMES_PER_DESC;
		for (j = 0; j < ISO_FRAMES_PER_DESC; j++) {
			urb->iso_frame_desc[j].offset = j * ISO_MAX_FRAME_SIZE;
			urb->iso_frame_desc[j].length = ISO_MAX_FRAME_SIZE;
		}
	}

	/* link */
	for (i = 0; i < MAX_ISO_BUFS; i++) {
		ret = FUNC7(dev->urbs[i], GFP_KERNEL);
		if (ret) {
			FUNC1(dev->dev,
				"usb_submit_urb %d failed with error %d\n",
				i, ret);
			FUNC2(dev);
			return ret;
		}
		FUNC0(dev->dev, "URB 0x%p submitted.\n", dev->urbs[i]);
	}

	/* All is done... */
	return 0;
}