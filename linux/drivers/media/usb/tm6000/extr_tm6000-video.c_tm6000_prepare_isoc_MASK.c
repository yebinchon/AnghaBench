#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct urb {int number_of_packets; int transfer_flags; TYPE_5__* iso_frame_desc; int /*<<< orphan*/  interval; int /*<<< orphan*/  transfer_dma; } ;
struct tm6000_dmaqueue {int dummy; } ;
struct TYPE_9__ {int maxsize; TYPE_3__* endp; int /*<<< orphan*/  bAlternateSetting; int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_6__ {int max_pkt_size; int num_bufs; struct urb** transfer_buffer; struct urb** urb; } ;
struct tm6000_core {int urb_size; TYPE_4__ isoc_in; TYPE_1__ isoc_ctl; int /*<<< orphan*/  udev; struct urb** urb_buffer; int /*<<< orphan*/ * urb_dma; struct tm6000_dmaqueue vidq; } ;
struct TYPE_10__ {int offset; int length; } ;
struct TYPE_7__ {int bEndpointAddress; int /*<<< orphan*/  bInterval; } ;
struct TYPE_8__ {TYPE_2__ desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TM6000_MAX_ISO_PACKETS ; 
 int TM6000_NUM_URB_BUF ; 
 int URB_ISO_ASAP ; 
 int URB_NO_TRANSFER_DMA_MAP ; 
 int USB_ENDPOINT_NUMBER_MASK ; 
 int /*<<< orphan*/  V4L2_DEBUG_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (struct tm6000_core*,int /*<<< orphan*/ ,char*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct urb**) ; 
 void* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct tm6000_core*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct tm6000_core*) ; 
 int /*<<< orphan*/  FUNC6 (struct tm6000_core*) ; 
 int /*<<< orphan*/  FUNC7 (struct tm6000_core*) ; 
 int /*<<< orphan*/  tm6000_irq_callback ; 
 int /*<<< orphan*/  FUNC8 (struct tm6000_core*) ; 
 struct urb* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*,int /*<<< orphan*/ ,int,struct urb*,int,int /*<<< orphan*/ ,struct tm6000_dmaqueue*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct tm6000_core *dev)
{
	struct tm6000_dmaqueue *dma_q = &dev->vidq;
	int i, j, sb_size, pipe, size, max_packets;
	int num_bufs = TM6000_NUM_URB_BUF;
	struct urb *urb;

	/* De-allocates all pending stuff */
	FUNC8(dev);
	/* Stop interrupt USB pipe */
	FUNC7(dev);

	FUNC14(dev->udev,
			  dev->isoc_in.bInterfaceNumber,
			  dev->isoc_in.bAlternateSetting);

	/* Start interrupt USB pipe */
	FUNC6(dev);

	pipe = FUNC13(dev->udev,
			       dev->isoc_in.endp->desc.bEndpointAddress &
			       USB_ENDPOINT_NUMBER_MASK);

	size = FUNC11(dev->udev, pipe, FUNC12(pipe));

	if (size > dev->isoc_in.maxsize)
		size = dev->isoc_in.maxsize;

	dev->isoc_ctl.max_pkt_size = size;

	max_packets = TM6000_MAX_ISO_PACKETS;
	sb_size = max_packets * size;
	dev->urb_size = sb_size;

	dev->isoc_ctl.num_bufs = num_bufs;

	dev->isoc_ctl.urb = FUNC2(num_bufs, sizeof(void *),
					  GFP_KERNEL);
	if (!dev->isoc_ctl.urb)
		return -ENOMEM;

	dev->isoc_ctl.transfer_buffer = FUNC2(num_bufs,
						      sizeof(void *),
						      GFP_KERNEL);
	if (!dev->isoc_ctl.transfer_buffer) {
		FUNC1(dev->isoc_ctl.urb);
		return -ENOMEM;
	}

	FUNC0(dev, V4L2_DEBUG_QUEUE, "Allocating %d x %d packets (%d bytes) of %d bytes each to handle %u size\n",
		    max_packets, num_bufs, sb_size,
		    dev->isoc_in.maxsize, size);


	if (FUNC3(dev) < 0) {
		FUNC4("cannot allocate memory for urb buffers\n");

		/* call free, as some buffers might have been allocated */
		FUNC5(dev);
		FUNC1(dev->isoc_ctl.urb);
		FUNC1(dev->isoc_ctl.transfer_buffer);
		return -ENOMEM;
	}

	/* allocate urbs and transfer buffers */
	for (i = 0; i < dev->isoc_ctl.num_bufs; i++) {
		urb = FUNC9(max_packets, GFP_KERNEL);
		if (!urb) {
			FUNC8(dev);
			FUNC5(dev);
			return -ENOMEM;
		}
		dev->isoc_ctl.urb[i] = urb;

		urb->transfer_dma = dev->urb_dma[i];
		dev->isoc_ctl.transfer_buffer[i] = dev->urb_buffer[i];

		FUNC10(urb, dev->udev, pipe,
				  dev->isoc_ctl.transfer_buffer[i], sb_size,
				  tm6000_irq_callback, dma_q);
		urb->interval = dev->isoc_in.endp->desc.bInterval;
		urb->number_of_packets = max_packets;
		urb->transfer_flags = URB_ISO_ASAP | URB_NO_TRANSFER_DMA_MAP;

		for (j = 0; j < max_packets; j++) {
			urb->iso_frame_desc[j].offset = size * j;
			urb->iso_frame_desc[j].length = size;
		}
	}

	return 0;
}