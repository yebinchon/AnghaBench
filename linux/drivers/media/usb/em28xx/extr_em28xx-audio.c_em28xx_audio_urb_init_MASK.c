#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct usb_interface {size_t num_altsetting; TYPE_3__* altsetting; } ;
struct usb_endpoint_descriptor {scalar_t__ bEndpointAddress; int bInterval; } ;
struct usb_device {int /*<<< orphan*/  speed; } ;
struct urb {int transfer_flags; int interval; int number_of_packets; int transfer_buffer_length; TYPE_5__* iso_frame_desc; int /*<<< orphan*/  complete; void* transfer_buffer; int /*<<< orphan*/  pipe; struct em28xx* context; struct usb_device* dev; int /*<<< orphan*/  transfer_dma; } ;
struct TYPE_10__ {int period; int num_urb; void** transfer_buffer; struct urb** urb; } ;
struct em28xx {TYPE_4__ adev; TYPE_6__* intf; int /*<<< orphan*/  ifnum; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {int offset; int length; } ;
struct TYPE_7__ {int bNumEndpoints; } ;
struct TYPE_9__ {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct TYPE_8__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ EM28XX_EP_AUDIO ; 
 int EM28XX_MAX_AUDIO_BUFS ; 
 int EM28XX_MIN_AUDIO_PACKETS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int URB_ISO_ASAP ; 
 int URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int,int,...) ; 
 int FUNC3 (struct usb_device*,struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC4 (struct em28xx*) ; 
 int /*<<< orphan*/  em28xx_audio_isocirq ; 
 struct usb_device* FUNC5 (TYPE_6__*) ; 
 void* FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void**) ; 
 void* FUNC8 (struct usb_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_endpoint_descriptor*) ; 
 struct usb_interface* FUNC11 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct em28xx *dev)
{
	struct usb_interface *intf;
	struct usb_endpoint_descriptor *e, *ep = NULL;
	struct usb_device *udev = FUNC5(dev->intf);
	int                 i, ep_size, interval, num_urb, npackets;
	int		    urb_size, bytes_per_transfer;
	u8 alt;

	if (dev->ifnum)
		alt = 1;
	else
		alt = 7;

	intf = FUNC11(udev, dev->ifnum);

	if (intf->num_altsetting <= alt) {
		FUNC1(&dev->intf->dev, "alt %d doesn't exist on interface %d\n",
			dev->ifnum, alt);
		return -ENODEV;
	}

	for (i = 0; i < intf->altsetting[alt].desc.bNumEndpoints; i++) {
		e = &intf->altsetting[alt].endpoint[i].desc;
		if (!FUNC10(e))
			continue;
		if (e->bEndpointAddress == EM28XX_EP_AUDIO) {
			ep = e;
			break;
		}
	}

	if (!ep) {
		FUNC1(&dev->intf->dev, "Couldn't find an audio endpoint");
		return -ENODEV;
	}

	ep_size = FUNC3(udev, ep);
	interval = 1 << (ep->bInterval - 1);

	FUNC2(&dev->intf->dev,
		 "Endpoint 0x%02x %s on intf %d alt %d interval = %d, size %d\n",
		 EM28XX_EP_AUDIO, FUNC13(udev->speed),
		 dev->ifnum, alt, interval, ep_size);

	/* Calculate the number and size of URBs to better fit the audio samples */

	/*
	 * Estimate the number of bytes per DMA transfer.
	 *
	 * This is given by the bit rate (for now, only 48000 Hz) multiplied
	 * by 2 channels and 2 bytes/sample divided by the number of microframe
	 * intervals and by the microframe rate (125 us)
	 */
	bytes_per_transfer = FUNC0(48000 * 2 * 2, 125 * interval);

	/*
	 * Estimate the number of transfer URBs. Don't let it go past the
	 * maximum number of URBs that is known to be supported by the device.
	 */
	num_urb = FUNC0(bytes_per_transfer, ep_size);
	if (num_urb > EM28XX_MAX_AUDIO_BUFS)
		num_urb = EM28XX_MAX_AUDIO_BUFS;

	/*
	 * Now that we know the number of bytes per transfer and the number of
	 * URBs, estimate the typical size of an URB, in order to adjust the
	 * minimal number of packets.
	 */
	urb_size = bytes_per_transfer / num_urb;

	/*
	 * Now, calculate the amount of audio packets to be filled on each
	 * URB. In order to preserve the old behaviour, use a minimal
	 * threshold for this value.
	 */
	npackets = EM28XX_MIN_AUDIO_PACKETS;
	if (urb_size > ep_size * npackets)
		npackets = FUNC0(urb_size, ep_size);

	FUNC2(&dev->intf->dev,
		 "Number of URBs: %d, with %d packets and %d size\n",
		 num_urb, npackets, urb_size);

	/* Estimate the bytes per period */
	dev->adev.period = urb_size * npackets;

	/* Allocate space to store the number of URBs to be used */

	dev->adev.transfer_buffer = FUNC6(num_urb,
					    sizeof(*dev->adev.transfer_buffer),
					    GFP_KERNEL);
	if (!dev->adev.transfer_buffer)
		return -ENOMEM;

	dev->adev.urb = FUNC6(num_urb, sizeof(*dev->adev.urb), GFP_KERNEL);
	if (!dev->adev.urb) {
		FUNC7(dev->adev.transfer_buffer);
		return -ENOMEM;
	}

	/* Alloc memory for each URB and for each transfer buffer */
	dev->adev.num_urb = num_urb;
	for (i = 0; i < num_urb; i++) {
		struct urb *urb;
		int j, k;
		void *buf;

		urb = FUNC9(npackets, GFP_KERNEL);
		if (!urb) {
			FUNC4(dev);
			return -ENOMEM;
		}
		dev->adev.urb[i] = urb;

		buf = FUNC8(udev, npackets * ep_size, GFP_KERNEL,
					 &urb->transfer_dma);
		if (!buf) {
			FUNC1(&dev->intf->dev,
				"usb_alloc_coherent failed!\n");
			FUNC4(dev);
			return -ENOMEM;
		}
		dev->adev.transfer_buffer[i] = buf;

		urb->dev = udev;
		urb->context = dev;
		urb->pipe = FUNC12(udev, EM28XX_EP_AUDIO);
		urb->transfer_flags = URB_ISO_ASAP | URB_NO_TRANSFER_DMA_MAP;
		urb->transfer_buffer = buf;
		urb->interval = interval;
		urb->complete = em28xx_audio_isocirq;
		urb->number_of_packets = npackets;
		urb->transfer_buffer_length = ep_size * npackets;

		for (j = k = 0; j < npackets; j++, k += ep_size) {
			urb->iso_frame_desc[j].offset = k;
			urb->iso_frame_desc[j].length = ep_size;
		}
	}

	return 0;
}