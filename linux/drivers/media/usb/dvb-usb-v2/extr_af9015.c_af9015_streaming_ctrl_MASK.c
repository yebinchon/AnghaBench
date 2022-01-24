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
typedef  unsigned int u8 ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct dvb_usb_device {TYPE_1__* udev; struct usb_interface* intf; } ;
struct dvb_frontend {int dummy; } ;
struct af9015_state {int* usb_ts_if_configured; int /*<<< orphan*/  regmap; scalar_t__ dual_mode; } ;
struct TYPE_4__ {unsigned int id; } ;
struct TYPE_3__ {scalar_t__ speed; } ;

/* Variables and functions */
 scalar_t__ USB_SPEED_FULL ; 
 struct af9015_state* FUNC0 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_2__* FUNC2 (struct dvb_frontend*) ; 
 struct dvb_usb_device* FUNC3 (struct dvb_frontend*) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int,unsigned int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct dvb_frontend *fe, int onoff)
{
	struct dvb_usb_device *d = FUNC3(fe);
	struct af9015_state *state = FUNC0(d);
	struct usb_interface *intf = d->intf;
	int ret;
	unsigned int utmp1, utmp2, reg1, reg2;
	u8 buf[2];
	const unsigned int adap_id = FUNC2(fe)->id;

	FUNC1(&intf->dev, "adap id %d, onoff %d\n", adap_id, onoff);

	if (!state->usb_ts_if_configured[adap_id]) {
		FUNC1(&intf->dev, "set usb and ts interface\n");

		/* USB IF stream settings */
		utmp1 = (d->udev->speed == USB_SPEED_FULL ? 5 : 87) * 188 / 4;
		utmp2 = (d->udev->speed == USB_SPEED_FULL ? 64 : 512) / 4;

		buf[0] = (utmp1 >> 0) & 0xff;
		buf[1] = (utmp1 >> 8) & 0xff;
		if (adap_id == 0) {
			/* 1st USB IF (EP4) stream settings */
			reg1 = 0xdd88;
			reg2 = 0xdd0c;
		} else {
			/* 2nd USB IF (EP5) stream settings */
			reg1 = 0xdd8a;
			reg2 = 0xdd0d;
		}
		ret = FUNC4(state->regmap, reg1, buf, 2);
		if (ret)
			goto err;
		ret = FUNC6(state->regmap, reg2, utmp2);
		if (ret)
			goto err;

		/* TS IF settings */
		if (state->dual_mode) {
			utmp1 = 0x01;
			utmp2 = 0x10;
		} else {
			utmp1 = 0x00;
			utmp2 = 0x00;
		}
		ret = FUNC5(state->regmap, 0xd50b, 0x01, utmp1);
		if (ret)
			goto err;
		ret = FUNC5(state->regmap, 0xd520, 0x10, utmp2);
		if (ret)
			goto err;

		state->usb_ts_if_configured[adap_id] = true;
	}

	if (adap_id == 0 && onoff) {
		/* Adapter 0 stream on. EP4: clear NAK, enable, clear reset */
		ret = FUNC5(state->regmap, 0xdd13, 0x20, 0x00);
		if (ret)
			goto err;
		ret = FUNC5(state->regmap, 0xdd11, 0x20, 0x20);
		if (ret)
			goto err;
		ret = FUNC5(state->regmap, 0xd507, 0x04, 0x00);
		if (ret)
			goto err;
	} else if (adap_id == 1 && onoff) {
		/* Adapter 1 stream on. EP5: clear NAK, enable, clear reset */
		ret = FUNC5(state->regmap, 0xdd13, 0x40, 0x00);
		if (ret)
			goto err;
		ret = FUNC5(state->regmap, 0xdd11, 0x40, 0x40);
		if (ret)
			goto err;
		ret = FUNC5(state->regmap, 0xd50b, 0x02, 0x00);
		if (ret)
			goto err;
	} else if (adap_id == 0 && !onoff) {
		/* Adapter 0 stream off. EP4: set reset, disable, set NAK */
		ret = FUNC5(state->regmap, 0xd507, 0x04, 0x04);
		if (ret)
			goto err;
		ret = FUNC5(state->regmap, 0xdd11, 0x20, 0x00);
		if (ret)
			goto err;
		ret = FUNC5(state->regmap, 0xdd13, 0x20, 0x20);
		if (ret)
			goto err;
	} else if (adap_id == 1 && !onoff) {
		/* Adapter 1 stream off. EP5: set reset, disable, set NAK */
		ret = FUNC5(state->regmap, 0xd50b, 0x02, 0x02);
		if (ret)
			goto err;
		ret = FUNC5(state->regmap, 0xdd11, 0x40, 0x00);
		if (ret)
			goto err;
		ret = FUNC5(state->regmap, 0xdd13, 0x40, 0x40);
		if (ret)
			goto err;
	}

	return 0;
err:
	FUNC1(&intf->dev, "failed %d\n", ret);
	return ret;
}