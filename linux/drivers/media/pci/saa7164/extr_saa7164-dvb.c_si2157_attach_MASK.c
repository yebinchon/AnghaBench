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
typedef  int u8 ;
struct si2157_config {struct dvb_frontend* fe; } ;
struct saa7164_port {struct i2c_client* i2c_client_tuner; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct i2c_board_info {int addr; int /*<<< orphan*/  type; struct si2157_config* platform_data; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend {int dummy; } ;
typedef  int /*<<< orphan*/  bi ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 struct i2c_client* FUNC0 (struct i2c_adapter*,struct i2c_board_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_board_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct saa7164_port *port, struct i2c_adapter *adapter,
	struct dvb_frontend *fe, u8 addr8bit, struct si2157_config *cfg)
{
	struct i2c_board_info bi;
	struct i2c_client *tuner;

	cfg->fe = fe;

	FUNC2(&bi, 0, sizeof(bi));

	FUNC4(bi.type, "si2157", I2C_NAME_SIZE);
	bi.platform_data = cfg;
	bi.addr = addr8bit >> 1;

	FUNC3(bi.type);

	tuner = FUNC0(adapter, &bi);
	if (tuner == NULL || tuner->dev.driver == NULL)
		return -ENODEV;

	if (!FUNC5(tuner->dev.driver->owner)) {
		FUNC1(tuner);
		return -ENODEV;
	}

	port->i2c_client_tuner = tuner;

	return 0;
}