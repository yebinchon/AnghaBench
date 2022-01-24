#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct au0828_dev {int height; int width; int /*<<< orphan*/  usbdev; int /*<<< orphan*/  dev_state; } ;
struct TYPE_3__ {int bAlternateSetting; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int AU0828_SENSORCTRL_100 ; 
 int AU0828_SENSORCTRL_VBI_103 ; 
 int /*<<< orphan*/  DEV_DISCONNECTED ; 
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct au0828_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct usb_interface* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct au0828_dev *d)
{
	struct usb_interface *iface;
	int ret, h, w;

	FUNC1(1, "au0828_analog_stream_enable called\n");

	if (FUNC3(DEV_DISCONNECTED, &d->dev_state))
		return -ENODEV;

	iface = FUNC4(d->usbdev, 0);
	if (iface && iface->cur_altsetting->desc.bAlternateSetting != 5) {
		FUNC1(1, "Changing intf#0 to alt 5\n");
		/* set au0828 interface0 to AS5 here again */
		ret = FUNC5(d->usbdev, 0, 5);
		if (ret < 0) {
			FUNC2("Au0828 can't set alt setting to 5!\n");
			return -EBUSY;
		}
	}

	h = d->height / 2 + 2;
	w = d->width * 2;

	FUNC0(d, AU0828_SENSORCTRL_VBI_103, 0x00);
	FUNC0(d, 0x106, 0x00);
	/* set x position */
	FUNC0(d, 0x110, 0x00);
	FUNC0(d, 0x111, 0x00);
	FUNC0(d, 0x114, w & 0xff);
	FUNC0(d, 0x115, w >> 8);
	/* set y position */
	FUNC0(d, 0x112, 0x00);
	FUNC0(d, 0x113, 0x00);
	FUNC0(d, 0x116, h & 0xff);
	FUNC0(d, 0x117, h >> 8);
	FUNC0(d, AU0828_SENSORCTRL_100, 0xb3);

	return 0;
}