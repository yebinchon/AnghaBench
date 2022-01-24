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
typedef  int u8 ;
typedef  int u16 ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct state {int dual_mode; } ;
struct reg_val_mask {int member_0; int member_1; int member_2; int /*<<< orphan*/  mask; int /*<<< orphan*/  val; int /*<<< orphan*/  reg; } ;
struct dvb_usb_device {TYPE_1__* udev; struct usb_interface* intf; } ;
struct TYPE_2__ {int /*<<< orphan*/  speed; } ;

/* Variables and functions */
 int FUNC0 (struct reg_val_mask*) ; 
 int /*<<< orphan*/  USB_SPEED_FULL ; 
 int FUNC1 (struct dvb_usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct state* FUNC2 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,...) ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_device *d)
{
	struct state *state = FUNC2(d);
	struct usb_interface *intf = d->intf;
	int ret, i;
	u16 frame_size = (d->udev->speed == USB_SPEED_FULL ? 5 : 87) * 188 / 4;
	u8 packet_size = (d->udev->speed == USB_SPEED_FULL ? 64 : 512) / 4;
	struct reg_val_mask tab[] = {
		{ 0x80f99d, 0x01, 0x01 },
		{ 0x80f9a4, 0x01, 0x01 },
		{ 0x00dd11, 0x00, 0x20 },
		{ 0x00dd11, 0x00, 0x40 },
		{ 0x00dd13, 0x00, 0x20 },
		{ 0x00dd13, 0x00, 0x40 },
		{ 0x00dd11, 0x20, 0x20 },
		{ 0x00dd88, (frame_size >> 0) & 0xff, 0xff},
		{ 0x00dd89, (frame_size >> 8) & 0xff, 0xff},
		{ 0x00dd0c, packet_size, 0xff},
		{ 0x00dd11, state->dual_mode << 6, 0x40 },
		{ 0x00dd8a, (frame_size >> 0) & 0xff, 0xff},
		{ 0x00dd8b, (frame_size >> 8) & 0xff, 0xff},
		{ 0x00dd0d, packet_size, 0xff },
		{ 0x80f9a3, state->dual_mode, 0x01 },
		{ 0x80f9cd, state->dual_mode, 0x01 },
		{ 0x80f99d, 0x00, 0x01 },
		{ 0x80f9a4, 0x00, 0x01 },
	};

	FUNC3(&intf->dev, "USB speed=%d frame_size=%04x packet_size=%02x\n",
		d->udev->speed, frame_size, packet_size);

	/* init endpoints */
	for (i = 0; i < FUNC0(tab); i++) {
		ret = FUNC1(d, tab[i].reg, tab[i].val,
				tab[i].mask);
		if (ret < 0)
			goto err;
	}

	return 0;

err:
	FUNC3(&intf->dev, "failed=%d\n", ret);

	return ret;
}