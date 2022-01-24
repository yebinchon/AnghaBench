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
struct usb_device {int dummy; } ;
struct em28xx_v4l2 {int width; int height; } ;
struct em28xx {int alt; scalar_t__ num_alt; unsigned int* alt_max_pkt_size_isoc; int max_pkt_size; TYPE_1__* intf; int /*<<< orphan*/  ifnum; int /*<<< orphan*/  packet_multiplier; scalar_t__ analog_xfer_bulk; struct em28xx_v4l2* v4l2; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EM28XX_BULK_PACKET_MULTIPLIER ; 
 int /*<<< orphan*/  EM28XX_NUM_ISOC_PACKETS ; 
 scalar_t__ alt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,...) ; 
 struct usb_device* FUNC2 (TYPE_1__*) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct em28xx *dev)
{
	struct em28xx_v4l2 *v4l2 = dev->v4l2;
	struct usb_device *udev = FUNC2(dev->intf);
	int err;
	int i;
	unsigned int min_pkt_size = v4l2->width * 2 + 4;

	/*
	 * NOTE: for isoc transfers, only alt settings > 0 are allowed
	 * bulk transfers seem to work only with alt=0 !
	 */
	dev->alt = 0;
	if (alt > 0 && alt < dev->num_alt) {
		FUNC1("alternate forced to %d\n", dev->alt);
		dev->alt = alt;
		goto set_alt;
	}
	if (dev->analog_xfer_bulk)
		goto set_alt;

	/*
	 * When image size is bigger than a certain value,
	 * the frame size should be increased, otherwise, only
	 * green screen will be received.
	 */
	if (v4l2->width * 2 * v4l2->height > 720 * 240 * 2)
		min_pkt_size *= 2;

	for (i = 0; i < dev->num_alt; i++) {
		/* stop when the selected alt setting offers enough bandwidth */
		if (dev->alt_max_pkt_size_isoc[i] >= min_pkt_size) {
			dev->alt = i;
			break;
		/*
		 * otherwise make sure that we end up with the maximum
		 * bandwidth because the min_pkt_size equation might be wrong.
		 *
		 */
		} else if (dev->alt_max_pkt_size_isoc[i] >
			   dev->alt_max_pkt_size_isoc[dev->alt])
			dev->alt = i;
	}

set_alt:
	/*
	 * NOTE: for bulk transfers, we need to call usb_set_interface()
	 * even if the previous settings were the same. Otherwise streaming
	 * fails with all urbs having status = -EOVERFLOW !
	 */
	if (dev->analog_xfer_bulk) {
		dev->max_pkt_size = 512; /* USB 2.0 spec */
		dev->packet_multiplier = EM28XX_BULK_PACKET_MULTIPLIER;
	} else { /* isoc */
		FUNC1("minimum isoc packet size: %u (alt=%d)\n",
				min_pkt_size, dev->alt);
		dev->max_pkt_size =
				  dev->alt_max_pkt_size_isoc[dev->alt];
		dev->packet_multiplier = EM28XX_NUM_ISOC_PACKETS;
	}
	FUNC1("setting alternate %d with wMaxPacketSize=%u\n",
			dev->alt, dev->max_pkt_size);
	err = FUNC3(udev, dev->ifnum, dev->alt);
	if (err < 0) {
		FUNC0(&dev->intf->dev,
			"cannot change alternate number to %d (error=%i)\n",
			dev->alt, err);
		return err;
	}
	return 0;
}