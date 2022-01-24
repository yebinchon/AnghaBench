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
struct dvb_usb_device {TYPE_1__* intf; int /*<<< orphan*/  udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_GPIO_OUT_VAL ; 
 int /*<<< orphan*/  SYS_SYS0 ; 
 int /*<<< orphan*/  USB_EPA_CTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC1 (struct dvb_usb_device*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct dvb_usb_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct dvb_usb_device*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct dvb_usb_device *d, int onoff)
{
	int ret;
	u8 gpio, sys0, epa_ctl[2];

	FUNC0(&d->intf->dev, "onoff=%d\n", onoff);

	/* demod adc */
	ret = FUNC1(d, SYS_SYS0, &sys0);
	if (ret)
		goto err;

	/* tuner power, read GPIOs */
	ret = FUNC1(d, SYS_GPIO_OUT_VAL, &gpio);
	if (ret)
		goto err;

	FUNC0(&d->intf->dev, "RD SYS0=%02x GPIO_OUT_VAL=%02x\n", sys0, gpio);

	if (onoff) {
		gpio |= 0x01; /* GPIO0 = 1 */
		gpio &= (~0x10); /* GPIO4 = 0 */
		gpio |= 0x04; /* GPIO2 = 1, LED on */
		sys0 = sys0 & 0x0f;
		sys0 |= 0xe0;
		epa_ctl[0] = 0x00; /* clear stall */
		epa_ctl[1] = 0x00; /* clear reset */
	} else {
		gpio &= (~0x01); /* GPIO0 = 0 */
		gpio |= 0x10; /* GPIO4 = 1 */
		gpio &= (~0x04); /* GPIO2 = 1, LED off */
		sys0 = sys0 & (~0xc0);
		epa_ctl[0] = 0x10; /* set stall */
		epa_ctl[1] = 0x02; /* set reset */
	}

	FUNC0(&d->intf->dev, "WR SYS0=%02x GPIO_OUT_VAL=%02x\n", sys0, gpio);

	/* demod adc */
	ret = FUNC2(d, SYS_SYS0, sys0);
	if (ret)
		goto err;

	/* tuner power, write GPIOs */
	ret = FUNC2(d, SYS_GPIO_OUT_VAL, gpio);
	if (ret)
		goto err;

	/* streaming EP: stall & reset */
	ret = FUNC3(d, USB_EPA_CTL, epa_ctl, 2);
	if (ret)
		goto err;

	if (onoff)
		FUNC4(d->udev, FUNC5(d->udev, 0x81));

	return ret;
err:
	FUNC0(&d->intf->dev, "failed=%d\n", ret);
	return ret;
}