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
struct dvb_usb_device {TYPE_1__* intf; int /*<<< orphan*/  udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_DEMOD_CTL ; 
 int /*<<< orphan*/  SYS_DEMOD_CTL1 ; 
 int /*<<< orphan*/  SYS_GPIO_OUT_VAL ; 
 int /*<<< orphan*/  USB_EPA_CTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct dvb_usb_device*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct dvb_usb_device*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_device *d, int onoff)
{
	int ret;

	FUNC0(&d->intf->dev, "onoff=%d\n", onoff);

	if (onoff) {
		/* GPIO3=1, GPIO4=0 */
		ret = FUNC1(d, SYS_GPIO_OUT_VAL, 0x08, 0x18);
		if (ret)
			goto err;

		/* suspend? */
		ret = FUNC1(d, SYS_DEMOD_CTL1, 0x00, 0x10);
		if (ret)
			goto err;

		/* enable PLL */
		ret = FUNC1(d, SYS_DEMOD_CTL, 0x80, 0x80);
		if (ret)
			goto err;

		/* disable reset */
		ret = FUNC1(d, SYS_DEMOD_CTL, 0x20, 0x20);
		if (ret)
			goto err;

		/* streaming EP: clear stall & reset */
		ret = FUNC2(d, USB_EPA_CTL, "\x00\x00", 2);
		if (ret)
			goto err;

		ret = FUNC3(d->udev, FUNC4(d->udev, 0x81));
		if (ret)
			goto err;
	} else {
		/* GPIO4=1 */
		ret = FUNC1(d, SYS_GPIO_OUT_VAL, 0x10, 0x10);
		if (ret)
			goto err;

		/* disable PLL */
		ret = FUNC1(d, SYS_DEMOD_CTL, 0x00, 0x80);
		if (ret)
			goto err;

		/* streaming EP: set stall & reset */
		ret = FUNC2(d, USB_EPA_CTL, "\x10\x02", 2);
		if (ret)
			goto err;
	}

	return ret;
err:
	FUNC0(&d->intf->dev, "failed=%d\n", ret);
	return ret;
}