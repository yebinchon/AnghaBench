#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct zd1301_dev {struct platform_device* platform_device_demod; struct i2c_client* i2c_client_tuner; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {TYPE_3__* driver; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_6__ {TYPE_1__* driver; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct dvb_usb_adapter {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  owner; } ;
struct TYPE_5__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 struct dvb_usb_device* FUNC0 (struct dvb_usb_adapter*) ; 
 struct zd1301_dev* FUNC1 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct dvb_usb_adapter *adap)
{
	struct dvb_usb_device *d = FUNC0(adap);
	struct zd1301_dev *dev = FUNC1(d);
	struct usb_interface *intf = d->intf;
	struct platform_device *pdev;
	struct i2c_client *client;

	FUNC2(&intf->dev, "\n");

	client = dev->i2c_client_tuner;
	pdev = dev->platform_device_demod;

	/* Remove I2C tuner */
	if (client) {
		FUNC4(client->dev.driver->owner);
		FUNC3(client);
	}

	/* Remove platform demod */
	if (pdev) {
		FUNC4(pdev->dev.driver->owner);
		FUNC5(pdev);
	}

	return 0;
}