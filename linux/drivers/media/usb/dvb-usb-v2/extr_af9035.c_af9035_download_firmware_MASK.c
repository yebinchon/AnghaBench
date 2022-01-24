#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct usb_req {int member_2; int* member_3; int member_4; int* member_5; int /*<<< orphan*/  cmd; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct state {int* eeprom; int chip_type; scalar_t__ dual_mode; } ;
struct firmware {int* data; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_FW_BOOT ; 
 int /*<<< orphan*/  CMD_FW_QUERYINFO ; 
 size_t EEPROM_2ND_DEMOD_ADDR ; 
 int ENODEV ; 
 int FUNC0 (struct dvb_usb_device*,struct usb_req*) ; 
 int FUNC1 (struct dvb_usb_device*,struct firmware const*) ; 
 int FUNC2 (struct dvb_usb_device*,struct firmware const*) ; 
 int FUNC3 (struct dvb_usb_device*,int,int) ; 
 int FUNC4 (struct dvb_usb_device*,int,int,int) ; 
 struct state* FUNC5 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct dvb_usb_device *d,
		const struct firmware *fw)
{
	struct usb_interface *intf = d->intf;
	struct state *state = FUNC5(d);
	int ret;
	u8 wbuf[1];
	u8 rbuf[4];
	u8 tmp;
	struct usb_req req = { 0, 0, 0, NULL, 0, NULL };
	struct usb_req req_fw_ver = { CMD_FW_QUERYINFO, 0, 1, wbuf, 4, rbuf };

	FUNC6(&intf->dev, "\n");

	/*
	 * In case of dual tuner configuration we need to do some extra
	 * initialization in order to download firmware to slave demod too,
	 * which is done by master demod.
	 * Master feeds also clock and controls power via GPIO.
	 */
	if (state->dual_mode) {
		/* configure gpioh1, reset & power slave demod */
		ret = FUNC4(d, 0x00d8b0, 0x01, 0x01);
		if (ret < 0)
			goto err;

		ret = FUNC4(d, 0x00d8b1, 0x01, 0x01);
		if (ret < 0)
			goto err;

		ret = FUNC4(d, 0x00d8af, 0x00, 0x01);
		if (ret < 0)
			goto err;

		FUNC9(10000, 50000);

		ret = FUNC4(d, 0x00d8af, 0x01, 0x01);
		if (ret < 0)
			goto err;

		/* tell the slave I2C address */
		tmp = state->eeprom[EEPROM_2ND_DEMOD_ADDR];

		/* Use default I2C address if eeprom has no address set */
		if (!tmp)
			tmp = 0x1d << 1; /* 8-bit format used by chip */

		if ((state->chip_type == 0x9135) ||
				(state->chip_type == 0x9306)) {
			ret = FUNC3(d, 0x004bfb, tmp);
			if (ret < 0)
				goto err;
		} else {
			ret = FUNC3(d, 0x00417f, tmp);
			if (ret < 0)
				goto err;

			/* enable clock out */
			ret = FUNC4(d, 0x00d81a, 0x01, 0x01);
			if (ret < 0)
				goto err;
		}
	}

	if (fw->data[0] == 0x01)
		ret = FUNC2(d, fw);
	else
		ret = FUNC1(d, fw);
	if (ret < 0)
		goto err;

	/* firmware loaded, request boot */
	req.cmd = CMD_FW_BOOT;
	ret = FUNC0(d, &req);
	if (ret < 0)
		goto err;

	/* ensure firmware starts */
	wbuf[0] = 1;
	ret = FUNC0(d, &req_fw_ver);
	if (ret < 0)
		goto err;

	if (!(rbuf[0] || rbuf[1] || rbuf[2] || rbuf[3])) {
		FUNC7(&intf->dev, "firmware did not run\n");
		ret = -ENODEV;
		goto err;
	}

	FUNC8(&intf->dev, "firmware version=%d.%d.%d.%d",
		 rbuf[0], rbuf[1], rbuf[2], rbuf[3]);

	return 0;

err:
	FUNC6(&intf->dev, "failed=%d\n", ret);

	return ret;
}