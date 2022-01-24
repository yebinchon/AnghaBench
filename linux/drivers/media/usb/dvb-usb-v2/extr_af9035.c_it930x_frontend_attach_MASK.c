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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct state {size_t it930x_addresses; struct i2c_adapter* i2c_adapter_demod; int /*<<< orphan*/  ops; TYPE_1__* af9033_config; } ;
struct si2168_config {int /*<<< orphan*/  ts_mode; int /*<<< orphan*/ ** fe; struct i2c_adapter** i2c_adapter; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {int /*<<< orphan*/  i2c_adap; struct usb_interface* intf; } ;
struct dvb_usb_adapter {int id; int /*<<< orphan*/ ** fe; } ;
typedef  int /*<<< orphan*/  si2168_config ;
struct TYPE_4__ {int /*<<< orphan*/  frontend_i2c_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/ ** fe; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SI2168_TS_SERIAL ; 
 struct dvb_usb_device* FUNC0 (struct dvb_usb_adapter*) ; 
 struct state* FUNC1 (struct dvb_usb_adapter*) ; 
 int FUNC2 (struct dvb_usb_device*,char*,int /*<<< orphan*/ ,struct si2168_config*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct dvb_usb_device*,int,int) ; 
 int FUNC4 (struct dvb_usb_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_2__* it930x_addresses_table ; 
 int /*<<< orphan*/  FUNC6 (struct si2168_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct dvb_usb_adapter *adap)
{
	struct state *state = FUNC1(adap);
	struct dvb_usb_device *d = FUNC0(adap);
	struct usb_interface *intf = d->intf;
	int ret;
	struct si2168_config si2168_config;
	struct i2c_adapter *adapter;

	FUNC5(&intf->dev, "adap->id=%d\n", adap->id);

	/* I2C master bus 2 clock speed 300k */
	ret = FUNC3(d, 0x00f6a7, 0x07);
	if (ret < 0)
		goto err;

	/* I2C master bus 1,3 clock speed 300k */
	ret = FUNC3(d, 0x00f103, 0x07);
	if (ret < 0)
		goto err;

	/* set gpio11 low */
	ret = FUNC4(d, 0xd8d4, 0x01, 0x01);
	if (ret < 0)
		goto err;

	ret = FUNC4(d, 0xd8d5, 0x01, 0x01);
	if (ret < 0)
		goto err;

	ret = FUNC4(d, 0xd8d3, 0x01, 0x01);
	if (ret < 0)
		goto err;

	/* Tuner enable using gpiot2_en, gpiot2_on and gpiot2_o (reset) */
	ret = FUNC4(d, 0xd8b8, 0x01, 0x01);
	if (ret < 0)
		goto err;

	ret = FUNC4(d, 0xd8b9, 0x01, 0x01);
	if (ret < 0)
		goto err;

	ret = FUNC4(d, 0xd8b7, 0x00, 0x01);
	if (ret < 0)
		goto err;

	FUNC7(200);

	ret = FUNC4(d, 0xd8b7, 0x01, 0x01);
	if (ret < 0)
		goto err;

	FUNC6(&si2168_config, 0, sizeof(si2168_config));
	si2168_config.i2c_adapter = &adapter;
	si2168_config.fe = &adap->fe[0];
	si2168_config.ts_mode = SI2168_TS_SERIAL;

	state->af9033_config[adap->id].fe = &adap->fe[0];
	state->af9033_config[adap->id].ops = &state->ops;
	ret = FUNC2(d, "si2168",
				 it930x_addresses_table[state->it930x_addresses].frontend_i2c_addr,
				 &si2168_config, &d->i2c_adap);
	if (ret)
		goto err;

	if (adap->fe[0] == NULL) {
		ret = -ENODEV;
		goto err;
	}
	state->i2c_adapter_demod = adapter;

	return 0;

err:
	FUNC5(&intf->dev, "failed=%d\n", ret);

	return ret;
}