#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct i2c_device_id {int dummy; } ;
struct TYPE_7__ {TYPE_1__* platform_data; } ;
struct i2c_client {TYPE_2__ dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;
struct ak881x {int lines; void* revision; TYPE_1__* pdata; int /*<<< orphan*/  subdev; } ;
struct TYPE_6__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK881X_DEVICE_ID ; 
 int /*<<< orphan*/  AK881X_DEVICE_REVISION ; 
 int AK881X_FIELD ; 
#define  AK881X_IF_MODE_BT656 130 
 int AK881X_IF_MODE_MASK ; 
#define  AK881X_IF_MODE_MASTER 129 
#define  AK881X_IF_MODE_SLAVE 128 
 int /*<<< orphan*/  AK881X_INTERFACE_MODE ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  ak881x_subdev_ops ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct ak881x* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			const struct i2c_device_id *did)
{
	struct i2c_adapter *adapter = client->adapter;
	struct ak881x *ak881x;
	u8 ifmode, data;

	if (!FUNC5(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC3(&adapter->dev,
			 "I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\n");
		return -EIO;
	}

	ak881x = FUNC4(&client->dev, sizeof(*ak881x), GFP_KERNEL);
	if (!ak881x)
		return -ENOMEM;

	FUNC8(&ak881x->subdev, client, &ak881x_subdev_ops);

	data = FUNC6(client, AK881X_DEVICE_ID);

	switch (data) {
	case 0x13:
	case 0x14:
		break;
	default:
		FUNC1(&client->dev,
			"No ak881x chip detected, register read %x\n", data);
		return -ENODEV;
	}

	ak881x->revision = FUNC6(client, AK881X_DEVICE_REVISION);
	ak881x->pdata = client->dev.platform_data;

	if (ak881x->pdata) {
		if (ak881x->pdata->flags & AK881X_FIELD)
			ifmode = 4;
		else
			ifmode = 0;

		switch (ak881x->pdata->flags & AK881X_IF_MODE_MASK) {
		case AK881X_IF_MODE_BT656:
			ifmode |= 1;
			break;
		case AK881X_IF_MODE_MASTER:
			ifmode |= 2;
			break;
		case AK881X_IF_MODE_SLAVE:
		default:
			break;
		}

		FUNC0(&client->dev, "IF mode %x\n", ifmode);

		/*
		 * "Line Blanking No." seems to be the same as the number of
		 * "black" lines on, e.g., SuperH VOU, whose default value of 20
		 * "incidentally" matches ak881x' default
		 */
		FUNC7(client, AK881X_INTERFACE_MODE, ifmode | (20 << 3));
	}

	/* Hardware default: NTSC-M */
	ak881x->lines = 480;

	FUNC2(&client->dev, "Detected an ak881x chip ID %x, revision %x\n",
		 data, ak881x->revision);

	return 0;
}