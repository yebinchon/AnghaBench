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
struct ts2020_config {int attach_in_use; int /*<<< orphan*/  tuner_address; struct dvb_frontend* fe; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct i2c_board_info {struct ts2020_config* platform_data; int /*<<< orphan*/  addr; int /*<<< orphan*/  type; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend {int dummy; } ;
typedef  int /*<<< orphan*/  pdata ;
typedef  int /*<<< orphan*/  board_info ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 struct i2c_client* FUNC0 (struct i2c_adapter*,struct i2c_board_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct ts2020_config*,struct ts2020_config const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_board_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

struct dvb_frontend *FUNC4(struct dvb_frontend *fe,
					const struct ts2020_config *config,
					struct i2c_adapter *i2c)
{
	struct i2c_client *client;
	struct i2c_board_info board_info;

	/* This is only used by ts2020_probe() so can be on the stack */
	struct ts2020_config pdata;

	FUNC1(&pdata, config, sizeof(pdata));
	pdata.fe = fe;
	pdata.attach_in_use = true;

	FUNC2(&board_info, 0, sizeof(board_info));
	FUNC3(board_info.type, "ts2020", I2C_NAME_SIZE);
	board_info.addr = config->tuner_address;
	board_info.platform_data = &pdata;
	client = FUNC0(i2c, &board_info);
	if (!client || !client->dev.driver)
		return NULL;

	return fe;
}