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
struct rtl28xxu_req {int member_0; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
struct rtl28xxu_dev {int chip_id; } ;
struct TYPE_3__ {int retries; int /*<<< orphan*/  timeout; } ;
struct dvb_usb_device {TYPE_2__* intf; TYPE_1__ i2c_adap; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CHIP_ID_RTL2831U ; 
 int CHIP_ID_RTL2832U ; 
 int /*<<< orphan*/  CMD_I2C_DA_RD ; 
 int EPIPE ; 
 int WARM ; 
 struct rtl28xxu_dev* FUNC0 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct dvb_usb_device*,struct rtl28xxu_req*) ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_device *d, const char **name)
{
	struct rtl28xxu_dev *dev = FUNC0(d);
	int ret;
	struct rtl28xxu_req req_demod_i2c = {0x0020, &CMD_I2C_DA_RD, 0, NULL};

	FUNC1(&d->intf->dev, "\n");

	/*
	 * Detect chip type using I2C command that is not supported
	 * by old RTL2831U.
	 */
	ret = FUNC4(d, &req_demod_i2c);
	if (ret == -EPIPE) {
		dev->chip_id = CHIP_ID_RTL2831U;
	} else if (ret == 0) {
		dev->chip_id = CHIP_ID_RTL2832U;
	} else {
		FUNC2(&d->intf->dev, "chip type detection failed %d\n", ret);
		goto err;
	}
	FUNC1(&d->intf->dev, "chip_id=%u\n", dev->chip_id);

	/* Retry failed I2C messages */
	d->i2c_adap.retries = 3;
	d->i2c_adap.timeout = FUNC3(10);

	return WARM;
err:
	FUNC1(&d->intf->dev, "failed=%d\n", ret);
	return ret;
}