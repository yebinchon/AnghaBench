#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct smi_port {scalar_t__ idx; TYPE_3__* fe; struct i2c_client* i2c_client_tuner; struct smi_dev* dev; } ;
struct smi_dev {struct i2c_adapter* i2c_bus; } ;
struct m88rs6000t_config {TYPE_3__* fe; } ;
struct i2c_client {int dummy; } ;
struct i2c_board_info {int addr; struct m88rs6000t_config* platform_data; int /*<<< orphan*/  type; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  get_rf_strength; } ;
struct TYPE_6__ {TYPE_1__ tuner_ops; int /*<<< orphan*/  read_signal_strength; } ;
struct TYPE_7__ {TYPE_2__ ops; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct i2c_adapter*,struct i2c_adapter**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  m88ds3103_attach ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_board_info*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC3 (struct i2c_adapter*,struct i2c_board_info*) ; 
 int /*<<< orphan*/  smi_dvbsky_m88rs6000_cfg ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct smi_port *port)
{
	int ret = 0;
	struct smi_dev *dev = port->dev;
	struct i2c_adapter *i2c;
	/* tuner I2C module */
	struct i2c_adapter *tuner_i2c_adapter;
	struct i2c_client *tuner_client;
	struct i2c_board_info tuner_info;
	struct m88rs6000t_config m88rs6000t_config;

	FUNC2(&tuner_info, 0, sizeof(struct i2c_board_info));
	i2c = (port->idx == 0) ? &dev->i2c_bus[0] : &dev->i2c_bus[1];

	/* attach demod */
	port->fe = FUNC0(m88ds3103_attach,
			&smi_dvbsky_m88rs6000_cfg, i2c, &tuner_i2c_adapter);
	if (!port->fe) {
		ret = -ENODEV;
		return ret;
	}
	/* attach tuner */
	m88rs6000t_config.fe = port->fe;
	FUNC4(tuner_info.type, "m88rs6000t", I2C_NAME_SIZE);
	tuner_info.addr = 0x21;
	tuner_info.platform_data = &m88rs6000t_config;
	tuner_client = FUNC3(tuner_i2c_adapter, &tuner_info);
	if (!tuner_client) {
		ret = -ENODEV;
		goto err_tuner_i2c_device;
	}

	/* delegate signal strength measurement to tuner */
	port->fe->ops.read_signal_strength =
			port->fe->ops.tuner_ops.get_rf_strength;

	port->i2c_client_tuner = tuner_client;
	return ret;

err_tuner_i2c_device:
	FUNC1(port->fe);
	return ret;
}