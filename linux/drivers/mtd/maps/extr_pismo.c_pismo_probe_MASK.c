#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pismo_pdata {int /*<<< orphan*/ * cs_addrs; int /*<<< orphan*/  vpp_data; int /*<<< orphan*/  set_vpp; } ;
struct pismo_eeprom {TYPE_1__* cs; int /*<<< orphan*/  board; } ;
struct pismo_data {int /*<<< orphan*/  vpp_data; int /*<<< orphan*/  vpp; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_6__ {struct pismo_pdata* platform_data; } ;
struct i2c_client {TYPE_2__ dev; int /*<<< orphan*/  adapter; } ;
typedef  int /*<<< orphan*/  eeprom ;
struct TYPE_5__ {int type; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct pismo_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct pismo_data*) ; 
 struct pismo_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pismo_data*,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct i2c_client*,struct pismo_eeprom*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
		       const struct i2c_device_id *id)
{
	struct pismo_pdata *pdata = client->dev.platform_data;
	struct pismo_eeprom eeprom;
	struct pismo_data *pismo;
	int ret, i;

	if (!FUNC3(client->adapter, I2C_FUNC_I2C)) {
		FUNC1(&client->dev, "functionality mismatch\n");
		return -EIO;
	}

	pismo = FUNC6(sizeof(*pismo), GFP_KERNEL);
	if (!pismo)
		return -ENOMEM;

	pismo->client = client;
	if (pdata) {
		pismo->vpp = pdata->set_vpp;
		pismo->vpp_data = pdata->vpp_data;
	}
	FUNC4(client, pismo);

	ret = FUNC8(client, &eeprom, 0, sizeof(eeprom));
	if (ret < 0) {
		FUNC1(&client->dev, "error reading EEPROM: %d\n", ret);
		goto exit_free;
	}

	FUNC2(&client->dev, "%.15s board found\n", eeprom.board);

	for (i = 0; i < FUNC0(eeprom.cs); i++)
		if (eeprom.cs[i].type != 0xff)
			FUNC7(pismo, i, &eeprom.cs[i],
				      pdata->cs_addrs[i]);

	return 0;

 exit_free:
	FUNC5(pismo);
	return ret;
}