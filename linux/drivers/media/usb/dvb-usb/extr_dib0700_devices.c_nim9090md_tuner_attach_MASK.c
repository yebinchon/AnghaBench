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
typedef  int u16 ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_adapter {TYPE_1__* fe_adap; int /*<<< orphan*/  dev; struct dib0700_adapter_state* priv; } ;
struct dvb_frontend {int /*<<< orphan*/  dvb; } ;
struct dib0700_adapter_state {int /*<<< orphan*/  frontend_firmware; } ;
struct TYPE_2__ {struct dvb_frontend* fe; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DVB_DIB9000 ; 
 int /*<<< orphan*/  DIBX000_I2C_INTERFACE_GPIO_1_2 ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dib0090_fw_register ; 
 scalar_t__ FUNC1 (struct i2c_adapter*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_frontend*,int) ; 
 struct i2c_adapter* FUNC5 (struct dvb_frontend*) ; 
 struct i2c_adapter* FUNC6 (struct dvb_frontend*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dvb_frontend* FUNC7 (struct dvb_frontend*,int) ; 
 struct i2c_adapter* FUNC8 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC9 (struct dvb_frontend*,struct i2c_adapter*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,struct dvb_frontend*,struct i2c_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nim9090md_dib0090_config ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct dvb_usb_adapter *adap)
{
	struct dib0700_adapter_state *state = adap->priv;
	struct i2c_adapter *i2c;
	struct dvb_frontend *fe_slave;
	u16 data_dib190[10] = {
		1, 0x5374,
		2, 0x01ae,
		7, 0x0020,
		0, 0x00ef,
		8, 0x0406,
	};
	if (!FUNC0(CONFIG_DVB_DIB9000))
		return -ENODEV;
	i2c = FUNC8(adap->fe_adap[0].fe);
	if (FUNC10(dib0090_fw_register, adap->fe_adap[0].fe, i2c, &nim9090md_dib0090_config[0]) == NULL)
		return -ENODEV;
	i2c = FUNC6(adap->fe_adap[0].fe, DIBX000_I2C_INTERFACE_GPIO_1_2, 0);
	if (!i2c)
		return -ENODEV;
	if (FUNC1(i2c, data_dib190, 10) < 0)
		return -ENODEV;

	FUNC2(adap->dev, 1500);
	if (FUNC3(adap->fe_adap[0].fe) < 0)
		return -ENODEV;

	fe_slave = FUNC7(adap->fe_adap[0].fe, 1);
	if (fe_slave != NULL) {
		i2c = FUNC5(adap->fe_adap[0].fe);
		FUNC9(fe_slave, i2c);

		i2c = FUNC8(fe_slave);
		if (FUNC10(dib0090_fw_register, fe_slave, i2c, &nim9090md_dib0090_config[1]) == NULL)
			return -ENODEV;
		fe_slave->dvb = adap->fe_adap[0].fe->dvb;
		FUNC4(adap->fe_adap[0].fe, 1500);
		if (FUNC3(fe_slave) < 0)
			return -ENODEV;
	}
	FUNC11(state->frontend_firmware);

	return 0;
}