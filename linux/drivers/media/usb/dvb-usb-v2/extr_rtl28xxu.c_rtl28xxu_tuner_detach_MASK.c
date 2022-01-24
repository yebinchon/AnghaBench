#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rtl28xxu_dev {struct i2c_client* i2c_client_tuner; struct platform_device* platform_device_sdr; } ;
struct platform_device {int dummy; } ;
struct TYPE_4__ {TYPE_3__* driver; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct dvb_usb_device {TYPE_2__* intf; } ;
struct dvb_usb_adapter {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  owner; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct dvb_usb_device* FUNC0 (struct dvb_usb_adapter*) ; 
 struct rtl28xxu_dev* FUNC1 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct dvb_usb_adapter *adap)
{
	struct dvb_usb_device *d = FUNC0(adap);
	struct rtl28xxu_dev *dev = FUNC1(d);
	struct i2c_client *client;
	struct platform_device *pdev;

	FUNC2(&d->intf->dev, "\n");

	/* remove platform SDR */
	pdev = dev->platform_device_sdr;
	if (pdev)
		FUNC5(pdev);

	/* remove I2C tuner */
	client = dev->i2c_client_tuner;
	if (client) {
		FUNC4(client->dev.driver->owner);
		FUNC3(client);
	}

	return 0;
}