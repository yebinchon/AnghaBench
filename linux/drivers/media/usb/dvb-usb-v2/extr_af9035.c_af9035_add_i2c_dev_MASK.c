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
typedef  int /*<<< orphan*/  u8 ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct state {struct i2c_client** i2c_client; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct i2c_board_info {void* platform_data; int /*<<< orphan*/  type; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int AF9035_I2C_CLIENT_MAX ; 
 int ENODEV ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 struct state* FUNC0 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct i2c_client* FUNC3 (struct i2c_adapter*,struct i2c_board_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dvb_usb_device *d, const char *type,
		u8 addr, void *platform_data, struct i2c_adapter *adapter)
{
	int ret, num;
	struct state *state = FUNC0(d);
	struct usb_interface *intf = d->intf;
	struct i2c_client *client;
	struct i2c_board_info board_info = {
		.addr = addr,
		.platform_data = platform_data,
	};

	FUNC6(board_info.type, type, I2C_NAME_SIZE);

	/* find first free client */
	for (num = 0; num < AF9035_I2C_CLIENT_MAX; num++) {
		if (state->i2c_client[num] == NULL)
			break;
	}

	FUNC1(&intf->dev, "num=%d\n", num);

	if (num == AF9035_I2C_CLIENT_MAX) {
		FUNC2(&intf->dev, "I2C client out of index\n");
		ret = -ENODEV;
		goto err;
	}

	FUNC5("%s", board_info.type);

	/* register I2C device */
	client = FUNC3(adapter, &board_info);
	if (client == NULL || client->dev.driver == NULL) {
		ret = -ENODEV;
		goto err;
	}

	/* increase I2C driver usage count */
	if (!FUNC7(client->dev.driver->owner)) {
		FUNC4(client);
		ret = -ENODEV;
		goto err;
	}

	state->i2c_client[num] = client;
	return 0;
err:
	FUNC1(&intf->dev, "failed=%d\n", ret);
	return ret;
}