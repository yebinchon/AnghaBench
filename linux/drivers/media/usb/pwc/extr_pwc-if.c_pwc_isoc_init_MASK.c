#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct TYPE_5__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_3__* endpoint; TYPE_1__ desc; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct urb {int interval; int transfer_flags; int number_of_packets; TYPE_4__* iso_frame_desc; scalar_t__ start_frame; struct pwc_device* context; int /*<<< orphan*/  complete; int /*<<< orphan*/ * transfer_buffer; int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_buffer_length; int /*<<< orphan*/  pipe; struct usb_device* dev; } ;
struct pwc_device {int vmax_packet_size; int vendpoint; struct urb** urbs; int /*<<< orphan*/  valternate; struct usb_device* udev; int /*<<< orphan*/  vframes; int /*<<< orphan*/  pixfmt; int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ visoc_errors; scalar_t__ vframe_count; int /*<<< orphan*/ * fill_buf; scalar_t__ vlast_packet_size; scalar_t__ vsync; } ;
struct TYPE_8__ {int offset; int length; } ;
struct TYPE_6__ {int bEndpointAddress; int /*<<< orphan*/  wMaxPacketSize; } ;
struct TYPE_7__ {TYPE_2__ desc; } ;

/* Variables and functions */
 int EIO ; 
 int ENFILE ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ISO_BUFFER_SIZE ; 
 int ISO_FRAMES_PER_DESC ; 
 int ISO_MAX_FRAME_SIZE ; 
 int MAX_ISO_BUFS ; 
 int /*<<< orphan*/  FUNC0 (char*,struct urb*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int URB_ISO_ASAP ; 
 int URB_NO_TRANSFER_DMA_MAP ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pwc_device*) ; 
 int /*<<< orphan*/  pwc_isoc_handler ; 
 int FUNC6 (struct pwc_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 struct urb* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct usb_host_interface* FUNC8 (struct usb_interface*,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC9 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*,int) ; 
 int FUNC11 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct pwc_device *pdev)
{
	struct usb_device *udev;
	struct urb *urb;
	int i, j, ret;
	struct usb_interface *intf;
	struct usb_host_interface *idesc = NULL;
	int compression = 0; /* 0..3 = uncompressed..high */

	pdev->vsync = 0;
	pdev->vlast_packet_size = 0;
	pdev->fill_buf = NULL;
	pdev->vframe_count = 0;
	pdev->visoc_errors = 0;
	udev = pdev->udev;

retry:
	/* We first try with low compression and then retry with a higher
	   compression setting if there is not enough bandwidth. */
	ret = FUNC6(pdev, pdev->width, pdev->height, pdev->pixfmt,
				 pdev->vframes, &compression, 1);

	/* Get the current alternate interface, adjust packet size */
	intf = FUNC9(udev, 0);
	if (intf)
		idesc = FUNC8(intf, pdev->valternate);
	if (!idesc)
		return -EIO;

	/* Search video endpoint */
	pdev->vmax_packet_size = -1;
	for (i = 0; i < idesc->desc.bNumEndpoints; i++) {
		if ((idesc->endpoint[i].desc.bEndpointAddress & 0xF) == pdev->vendpoint) {
			pdev->vmax_packet_size = FUNC3(idesc->endpoint[i].desc.wMaxPacketSize);
			break;
		}
	}

	if (pdev->vmax_packet_size < 0 || pdev->vmax_packet_size > ISO_MAX_FRAME_SIZE) {
		FUNC2("Failed to find packet size for video endpoint in current alternate setting.\n");
		return -ENFILE; /* Odd error, that should be noticeable */
	}

	/* Set alternate interface */
	FUNC1("Setting alternate interface %d\n", pdev->valternate);
	ret = FUNC11(pdev->udev, 0, pdev->valternate);
	if (ret == -ENOSPC && compression < 3) {
		compression++;
		goto retry;
	}
	if (ret < 0)
		return ret;

	/* Allocate and init Isochronuous urbs */
	for (i = 0; i < MAX_ISO_BUFS; i++) {
		urb = FUNC7(ISO_FRAMES_PER_DESC, GFP_KERNEL);
		if (urb == NULL) {
			FUNC5(pdev);
			return -ENOMEM;
		}
		pdev->urbs[i] = urb;
		FUNC0("Allocated URB at 0x%p\n", urb);

		urb->interval = 1; // devik
		urb->dev = udev;
		urb->pipe = FUNC10(udev, pdev->vendpoint);
		urb->transfer_flags = URB_ISO_ASAP | URB_NO_TRANSFER_DMA_MAP;
		urb->transfer_buffer_length = ISO_BUFFER_SIZE;
		urb->transfer_buffer = FUNC4(&udev->dev,
							    urb->transfer_buffer_length,
							    &urb->transfer_dma);
		if (urb->transfer_buffer == NULL) {
			FUNC2("Failed to allocate urb buffer %d\n", i);
			FUNC5(pdev);
			return -ENOMEM;
		}
		urb->complete = pwc_isoc_handler;
		urb->context = pdev;
		urb->start_frame = 0;
		urb->number_of_packets = ISO_FRAMES_PER_DESC;
		for (j = 0; j < ISO_FRAMES_PER_DESC; j++) {
			urb->iso_frame_desc[j].offset = j * ISO_MAX_FRAME_SIZE;
			urb->iso_frame_desc[j].length = pdev->vmax_packet_size;
		}
	}

	/* link */
	for (i = 0; i < MAX_ISO_BUFS; i++) {
		ret = FUNC12(pdev->urbs[i], GFP_KERNEL);
		if (ret == -ENOSPC && compression < 3) {
			compression++;
			FUNC5(pdev);
			goto retry;
		}
		if (ret) {
			FUNC2("isoc_init() submit_urb %d failed with error %d\n", i, ret);
			FUNC5(pdev);
			return ret;
		}
		FUNC0("URB 0x%p submitted.\n", pdev->urbs[i]);
	}

	/* All is done... */
	FUNC1("<< pwc_isoc_init()\n");
	return 0;
}