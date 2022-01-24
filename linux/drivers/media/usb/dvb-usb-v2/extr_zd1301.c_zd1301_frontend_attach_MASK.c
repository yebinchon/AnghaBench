#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int i2c_write_max; struct dvb_frontend* dvb_frontend; } ;
struct TYPE_12__ {int /*<<< orphan*/  reg_write; int /*<<< orphan*/  reg_read; struct dvb_usb_device* reg_priv; } ;
struct zd1301_dev {struct i2c_client* i2c_client_tuner; struct platform_device* platform_device_demod; TYPE_1__ mt2060_pdata; TYPE_6__ demod_pdata; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct TYPE_11__ {TYPE_4__* driver; } ;
struct platform_device {TYPE_5__ dev; } ;
struct TYPE_9__ {TYPE_2__* driver; } ;
struct i2c_client {TYPE_3__ dev; } ;
struct i2c_board_info {int addr; TYPE_1__* platform_data; int /*<<< orphan*/  type; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct dvb_usb_adapter {struct dvb_frontend** fe; } ;
struct dvb_frontend {int dummy; } ;
typedef  int /*<<< orphan*/  board_info ;
struct TYPE_10__ {int /*<<< orphan*/  owner; } ;
struct TYPE_8__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 scalar_t__ FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC1 (struct platform_device*) ; 
 struct dvb_usb_device* FUNC2 (struct dvb_usb_adapter*) ; 
 struct zd1301_dev* FUNC3 (struct dvb_usb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 struct i2c_client* FUNC5 (struct i2c_adapter*,struct i2c_board_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_board_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct dvb_frontend* FUNC14 (struct platform_device*) ; 
 struct i2c_adapter* FUNC15 (struct platform_device*) ; 
 int /*<<< orphan*/  zd1301_demod_rreg ; 
 int /*<<< orphan*/  zd1301_demod_wreg ; 

__attribute__((used)) static int FUNC16(struct dvb_usb_adapter *adap)
{
	struct dvb_usb_device *d = FUNC2(adap);
	struct zd1301_dev *dev = FUNC3(adap);
	struct usb_interface *intf = d->intf;
	struct platform_device *pdev;
	struct i2c_client *client;
	struct i2c_board_info board_info;
	struct i2c_adapter *adapter;
	struct dvb_frontend *frontend;
	int ret;

	FUNC4(&intf->dev, "\n");

	/* Add platform demod */
	dev->demod_pdata.reg_priv = d;
	dev->demod_pdata.reg_read = zd1301_demod_rreg;
	dev->demod_pdata.reg_write = zd1301_demod_wreg;
	FUNC11("%s", "zd1301_demod");
	pdev = FUNC9(&intf->dev,
					     "zd1301_demod",
					     PLATFORM_DEVID_AUTO,
					     &dev->demod_pdata,
					     sizeof(dev->demod_pdata));
	if (FUNC0(pdev)) {
		ret = FUNC1(pdev);
		goto err;
	}
	if (!pdev->dev.driver) {
		ret = -ENODEV;
		goto err;
	}
	if (!FUNC13(pdev->dev.driver->owner)) {
		ret = -ENODEV;
		goto err_platform_device_unregister;
	}

	adapter = FUNC15(pdev);
	frontend = FUNC14(pdev);
	if (!adapter || !frontend) {
		ret = -ENODEV;
		goto err_module_put_demod;
	}

	/* Add I2C tuner */
	dev->mt2060_pdata.i2c_write_max = 9;
	dev->mt2060_pdata.dvb_frontend = frontend;
	FUNC7(&board_info, 0, sizeof(board_info));
	FUNC12(board_info.type, "mt2060", I2C_NAME_SIZE);
	board_info.addr = 0x60;
	board_info.platform_data = &dev->mt2060_pdata;
	FUNC11("%s", "mt2060");
	client = FUNC5(adapter, &board_info);
	if (!client || !client->dev.driver) {
		ret = -ENODEV;
		goto err_module_put_demod;
	}
	if (!FUNC13(client->dev.driver->owner)) {
		ret = -ENODEV;
		goto err_i2c_unregister_device;
	}

	dev->platform_device_demod = pdev;
	dev->i2c_client_tuner = client;
	adap->fe[0] = frontend;

	return 0;
err_i2c_unregister_device:
	FUNC6(client);
err_module_put_demod:
	FUNC8(pdev->dev.driver->owner);
err_platform_device_unregister:
	FUNC10(pdev);
err:
	FUNC4(&intf->dev, "failed=%d\n", ret);
	return ret;
}