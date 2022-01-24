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
struct rtl2830_platform_data {int /*<<< orphan*/  (* get_i2c_adapter ) (struct i2c_client*) ;int /*<<< orphan*/  (* get_dvb_frontend ) (struct i2c_client*) ;} ;
struct rtl28xxu_dev {int tuner; struct i2c_client* i2c_client_demod; int /*<<< orphan*/  demod_i2c_adapter; int /*<<< orphan*/  tuner_name; struct rtl2830_platform_data rtl2830_platform_data; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct i2c_board_info {int addr; int /*<<< orphan*/  type; struct rtl2830_platform_data* platform_data; } ;
struct dvb_usb_device {TYPE_3__* intf; int /*<<< orphan*/  i2c_adap; } ;
struct dvb_usb_adapter {int /*<<< orphan*/ * fe; } ;
typedef  int /*<<< orphan*/  board_info ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
#define  TUNER_RTL2830_MT2060 130 
#define  TUNER_RTL2830_MXL5005S 129 
#define  TUNER_RTL2830_QT1010 128 
 struct dvb_usb_device* FUNC0 (struct dvb_usb_adapter*) ; 
 struct rtl28xxu_dev* FUNC1 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC4 (int /*<<< orphan*/ *,struct i2c_board_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_board_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 struct rtl2830_platform_data rtl2830_mt2060_platform_data ; 
 struct rtl2830_platform_data rtl2830_mxl5005s_platform_data ; 
 struct rtl2830_platform_data rtl2830_qt1010_platform_data ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct dvb_usb_adapter *adap)
{
	struct dvb_usb_device *d = FUNC0(adap);
	struct rtl28xxu_dev *dev = FUNC1(d);
	struct rtl2830_platform_data *pdata = &dev->rtl2830_platform_data;
	struct i2c_board_info board_info;
	struct i2c_client *client;
	int ret;

	FUNC2(&d->intf->dev, "\n");

	switch (dev->tuner) {
	case TUNER_RTL2830_QT1010:
		*pdata = rtl2830_qt1010_platform_data;
		break;
	case TUNER_RTL2830_MT2060:
		*pdata = rtl2830_mt2060_platform_data;
		break;
	case TUNER_RTL2830_MXL5005S:
		*pdata = rtl2830_mxl5005s_platform_data;
		break;
	default:
		FUNC3(&d->intf->dev, "unknown tuner %s\n", dev->tuner_name);
		ret = -ENODEV;
		goto err;
	}

	/* attach demodulator */
	FUNC6(&board_info, 0, sizeof(board_info));
	FUNC8(board_info.type, "rtl2830", I2C_NAME_SIZE);
	board_info.addr = 0x10;
	board_info.platform_data = pdata;
	FUNC7("%s", board_info.type);
	client = FUNC4(&d->i2c_adap, &board_info);
	if (client == NULL || client->dev.driver == NULL) {
		ret = -ENODEV;
		goto err;
	}

	if (!FUNC11(client->dev.driver->owner)) {
		FUNC5(client);
		ret = -ENODEV;
		goto err;
	}

	adap->fe[0] = pdata->get_dvb_frontend(client);
	dev->demod_i2c_adapter = pdata->get_i2c_adapter(client);

	dev->i2c_client_demod = client;

	return 0;
err:
	FUNC2(&d->intf->dev, "failed=%d\n", ret);
	return ret;
}