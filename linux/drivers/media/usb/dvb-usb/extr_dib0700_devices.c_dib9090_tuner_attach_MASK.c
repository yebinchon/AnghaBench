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
struct dib0700_adapter_state {int /*<<< orphan*/  frontend_firmware; } ;
struct TYPE_2__ {int /*<<< orphan*/  fe; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DVB_DIB9000 ; 
 int /*<<< orphan*/  DIBX000_I2C_INTERFACE_GPIO_1_2 ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dib0090_fw_register ; 
 scalar_t__ FUNC1 (struct i2c_adapter*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct i2c_adapter* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_adapter* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dib9090_dib0090_config ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct i2c_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dvb_usb_adapter *adap)
{
	struct dib0700_adapter_state *state = adap->priv;
	struct i2c_adapter *i2c = FUNC5(adap->fe_adap[0].fe);
	u16 data_dib190[10] = {
		1, 0x1374,
		2, 0x01a2,
		7, 0x0020,
		0, 0x00ef,
		8, 0x0486,
	};

	if (!FUNC0(CONFIG_DVB_DIB9000))
		return -ENODEV;
	if (FUNC6(dib0090_fw_register, adap->fe_adap[0].fe, i2c, &dib9090_dib0090_config) == NULL)
		return -ENODEV;
	i2c = FUNC4(adap->fe_adap[0].fe, DIBX000_I2C_INTERFACE_GPIO_1_2, 0);
	if (!i2c)
		return -ENODEV;
	if (FUNC1(i2c, data_dib190, 10) != 0)
		return -ENODEV;
	FUNC2(adap->dev, 1500);
	if (FUNC3(adap->fe_adap[0].fe) < 0)
		return -ENODEV;
	FUNC7(state->frontend_firmware);
	return 0;
}