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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct req_t {int member_2; int member_5; int* member_6; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct af9015_state {int firmware_size; int firmware_checksum; int /*<<< orphan*/ * af9013_i2c_addr; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  COPY_FIRMWARE ; 
 int ENODEV ; 
 int ETIMEDOUT ; 
 int FUNC0 (struct dvb_usb_device*,struct req_t*) ; 
 int FUNC1 (struct dvb_usb_device*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC2 (struct dvb_usb_device*,int /*<<< orphan*/ ,int,int) ; 
 struct af9015_state* FUNC3 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 unsigned long jiffies ; 
 int FUNC6 (unsigned long) ; 
 unsigned long FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct dvb_usb_device *d)
{
	struct af9015_state *state = FUNC3(d);
	struct usb_interface *intf = d->intf;
	int ret;
	unsigned long timeout;
	u8 val, firmware_info[4];
	struct req_t req = {COPY_FIRMWARE, 0, 0x5100, 0, 0, 4, firmware_info};

	FUNC4(&intf->dev, "\n");

	firmware_info[0] = (state->firmware_size >> 8) & 0xff;
	firmware_info[1] = (state->firmware_size >> 0) & 0xff;
	firmware_info[2] = (state->firmware_checksum >> 8) & 0xff;
	firmware_info[3] = (state->firmware_checksum >> 0) & 0xff;

	/* Check whether firmware is already running */
	ret = FUNC1(d, state->af9013_i2c_addr[1], 0x98be, &val);
	if (ret)
		goto err;

	FUNC4(&intf->dev, "firmware status %02x\n", val);

	if (val == 0x0c)
		return 0;

	/* Set i2c clock to 625kHz to speed up firmware copy */
	ret = FUNC9(state->regmap, 0xd416, 0x04);
	if (ret)
		goto err;

	/* Copy firmware from master demod to slave demod */
	ret = FUNC0(d, &req);
	if (ret) {
		FUNC5(&intf->dev, "firmware copy cmd failed %d\n", ret);
		goto err;
	}

	/* Set i2c clock to 125kHz */
	ret = FUNC9(state->regmap, 0xd416, 0x14);
	if (ret)
		goto err;

	/* Boot firmware */
	ret = FUNC2(d, state->af9013_i2c_addr[1], 0xe205, 0x01);
	if (ret)
		goto err;

	/* Poll firmware ready */
	for (val = 0x00, timeout = jiffies + FUNC7(1000);
	     !FUNC10(jiffies, timeout) && val != 0x0c && val != 0x04;) {
		FUNC8(20);

		/* Check firmware status. 0c=OK, 04=fail */
		ret = FUNC1(d, state->af9013_i2c_addr[1],
					  0x98be, &val);
		if (ret)
			goto err;

		FUNC4(&intf->dev, "firmware status %02x\n", val);
	}

	FUNC4(&intf->dev, "firmware boot took %u ms\n",
		FUNC6(jiffies) - (FUNC6(timeout) - 1000));

	if (val == 0x04) {
		ret = -ENODEV;
		FUNC5(&intf->dev, "firmware did not run\n");
		goto err;
	} else if (val != 0x0c) {
		ret = -ETIMEDOUT;
		FUNC5(&intf->dev, "firmware boot timeout\n");
		goto err;
	}

	return 0;
err:
	FUNC4(&intf->dev, "failed %d\n", ret);
	return ret;
}